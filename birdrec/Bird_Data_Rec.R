rm(list=ls())

#loading require libraries
library(data.table)
library(lubridate)
library(dplyr)
library(readr)
library(sqldf)
library(tcltk)

library(RJDBC);
library(RPostgreSQL);
require(redshift);
library(sqldf);
library(rPython);
library(dplyr)

date1 = paste((format(Sys.time() - 24*60*60, "%Y-%m-%d",tz="Asia/Calcutta")),sep="'");

#dump data from mongo
system2('sh', args = c('/data1/delhivery/birdrec/exportdata.sh',1))

#loading the raw data
####################################
filepath <- "/data1/delhivery/birdrec/package_data.csv";
d1 = read.csv(filepath);

d1$wbn <- as.character(d1$wbn)
d1$mwn <- as.character(d1$mwn)
colnames(d1)[2] <- "cs_ss"
colnames(d1)[3] <- "cs_sd"
colnames(d1)[4] <- "pt"

# for sht is not null and wbn is same as mwn
d1 <- subset(d1,((sht=='MPS' & wbn==mwn) | sht != 'MPS'))
d1 <- subset(d1,(cs_ss!='Closed' | (cs_ss == 'Closed' & pt =='Cash')))

mongocount <- sqldf("select count(distinct wbn) from d1",drv="SQLite");

####################################
#Connection and data from Bird Package meta table 

url <- "jdbc:redshift://bird.cmggnoyaf9bv.us-east-1.redshift.amazonaws.com:5439/bird?user=bird_readonly&password=T7C3uJy7eY"
driver <- JDBC("com.amazon.redshift.jdbc41.Driver","/data1/delhivery/birdrec/RedshiftJDBC41-1.1.9.1009.jar", identifier.quote="`")
conn2 <- dbConnect(driver, url);
myRedshift <- src_postgres('bird',host = 'bird.cmggnoyaf9bv.us-east-1.redshift.amazonaws.com',port = 5439,user = "bird_readonly",password = "T7C3uJy7eY");
qry = paste("select distinct waybill,status_date from package_meta where status_date between dateadd('m', -330, current_date-1) and dateadd('m', -330, current_date)",sep=" ");
d2 <- dbGetQuery(conn2, qry);

birdcount <- sqldf("select count(distinct waybill) from d2",drv="SQLite");

# Mongo Data missing in Bird
missdata <- sqldf("SELECT distinct wbn FROM d1 WHERE wbn not in (SELECT distinct waybill from d2)",drv="SQLite" )
filepath1 <- paste("/data1/delhivery/birdrec/missing_in_bird_",date1,".csv",sep="");
write.csv(missdata, file = filepath1,row.names=F,quote=FALSE)

#Call Bird Data API for Addming the missing WBN
system2('python', args = c('/data1/delhivery/birdrec/sendfile.py',filepath1))

# Mongo Data missing in Bird
missdatabird <- sqldf("SELECT distinct waybill FROM d2 WHERE waybill not in (SELECT distinct wbn from d1)",drv="SQLite" )
filepath2 <- paste("/data1/delhivery/birdrec/missing_in_mongo_",date1,".csv",sep="");
write.csv(missdatabird, file = filepath2,row.names=F,quote=FALSE)

#mail send with uploading the file on S3
system2('python', args = c('/data1/delhivery/birdrec/mail_send_bck.py',mongocount,birdcount,filepath1,filepath2))


