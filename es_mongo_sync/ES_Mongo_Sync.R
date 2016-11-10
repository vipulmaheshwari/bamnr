library(sqldf);
library(elastic);
library(httr);
library(sendmailR);
library(rPython);

system2('sh', args = c('/data1/delhivery/es_mongo_sync/export_packages_daily.sh',1))

my.lt = as.POSIXlt(Sys.Date(),"%Y-%m-%d",tz="Asia/Calcutta")
filepath <- "/data1/delhivery/es_mongo_sync/package_data.csv";

#gte and lte time for 48 hours from current time -1
gte = paste(format(Sys.time() - 49*60*60, "%Y-%m-%dT%H:%M:%SZ",tz="Asia/Calcutta"),sep="");
lte = paste(format(Sys.time()- 1*60*60, "%Y-%m-%dT%H:%M:%SZ",tz="Asia/Calcutta"),sep="");

#gte and lte time for 24 hours from current time -1
gte1 = paste(format(Sys.time() - 25*60*60, "%Y-%m-%dT%H:%M:%SZ",tz="Asia/Calcutta"),sep="");
lte1 = paste(format(Sys.time()- 1*60*60, "%Y-%m-%dT%H:%M:%SZ",tz="Asia/Calcutta"),sep="");

time_dispatched = paste((format(Sys.time() - 25*60*60, "%Y-%m-%dT%H:%M:%SZ",tz="Asia/Calcutta")),sep="'");
time_dispatched <-paste(c("'",time_dispatched,"'"), collapse="")
mongo_dispatced_qry = paste("select count(*) from Mongo_data where length(dd_fdd) > 0 and pt in ('Pre-paid','COD') and pd >=",time_dispatched,sep="");

mongo_data = read.csv(filepath);
Mongo_data = data.frame(wbn=mongo_data$wbn,pd=mongo_data$pd,pt=mongo_data$pt,pdd=mongo_data$pdd,cs_st=mongo_data$cs.st,cs_ss=mongo_data$cs.ss,date_frd=mongo_data$date.frd,dd_fdd=mongo_data$dd.fdd);
mongo_delivered <- sqldf("select count(*) from Mongo_data where cs_ss = 'Delivered' and pt in ('Pre-paid','COD')",drv="SQLite");
#mongo_dispatched <- sqldf("select count(*) from Mongo_data where length(dd_fdd) > 0 and pt in ('Pre-paid','COD')",drv="SQLite");
mongo_dispatched <- sqldf(mongo_dispatced_qry,drv="SQLite");
mongo_pickup <- sqldf("select count(*) from Mongo_data where pt in ('Pre-paid','COD')",drv="SQLite");
mongo_return <- sqldf("select count(*) from Mongo_data where length(date_frd) > 0 and pt in ('Pre-paid','COD')",drv="SQLite");

#connect(es_host = 'https://74e4e6cdcdec9b9c4a851e151f3f907c.us-east-1.aws.found.io',es_port = 9200,es_user = 'shikhar.khattar',es_pwd = 'u2b76isw8rsr95ebbn')
connect(es_base = '74e4e6cdcdec9b9c4a851e151f3f907c.us-east-1.aws.found.io',es_user = 'ankur.shishodia',es_pwd = 'hbsixw83ivbujv7kfo')

q_es_delivered <- sprintf('{ "query": { "bool": { "must": [{ "match": { "cs.ss": "Delivered"}},{ "terms" : { "pt" : ["Pre-paid","COD"] }}], 
                          "filter": [ { "range": { "pd": { "gte": "%s", "lte": "%s"}}}] }}}',gte,lte)

#if dd_fdd is not null
q_es_dispatched <- sprintf('{ "query": { "bool": { "must": [{ "exists": {"field": "dd.fdd"}},{ "terms" : { "pt" : ["Pre-paid","COD"] }}], 
                           "filter": [ { "range": { "pd": { "gte": "%s", "lte": "%s"}}}] }}}',gte1,lte1)

#cod,prepaid counts
q_es_pickup <- sprintf('{ "query": { "bool": { "must": [{ "terms" : { "pt" : ["Pre-paid","COD"] }}], 
                       "filter": [ { "range": { "pd": { "gte": "%s", "lte": "%s"}}}] }}}',gte,lte)

#dat_frd is not null
q_es_return <- sprintf('{ "query": { "bool": { "must": [{ "exists": {"field": "date.frd"}},{ "terms" : { "pt" : ["Pre-paid","COD"] }}], 
                       "filter": [ { "range": { "pd": { "gte": "%s", "lte": "%s"}}}] }}}',gte,lte)

es_delivered <- Search(index="delhivery_db.packages", body=q_es_delivered)$hits$total
es_dispatched <- Search(index="delhivery_db.packages", body=q_es_dispatched)$hits$total
es_pickup <- Search(index="delhivery_db.packages", body=q_es_pickup)$hits$total
es_return <- Search(index="delhivery_db.packages", body=q_es_return)$hits$total

Mongo_Delivered_Count <- paste("Mongo_Delivered_Count : ",mongo_delivered)
ES_Delivered_Count <- paste("ES_Delivered_Count : ",es_delivered)

Mongo_Dispatched_Count <- paste("Mongo_Dispatched_Count : ",mongo_dispatched)
ES_Dispatched_Count <- paste("ES_Dispatched_Count : ",es_dispatched)

Mongo_Pickup_Count <- paste("Mongo_Pickup_Count : ",mongo_pickup)
ES_Pickup_Count <- paste("ES_Pickup_Count : ",es_pickup)

Mongo_Return_Count <- paste("Mongo_Return_Count : ",mongo_return)
ES_Return_Count <- paste("ES_Return_Count : ",es_return)

delivered <- rbind(Mongo_Delivered_Count,ES_Delivered_Count)  
dispatched <- rbind(Mongo_Dispatched_Count,ES_Dispatched_Count)
pickup <- rbind(Mongo_Pickup_Count,ES_Pickup_Count)
returnc <- rbind(Mongo_Return_Count,ES_Return_Count)

es_mongo_count <- rbind(delivered,dispatched,pickup,returnc)

delivered_percentage <- (((es_delivered - mongo_delivered)/es_delivered)*100)
dispatched_percentage <- (((es_dispatched - mongo_dispatched)/es_dispatched)*100)
pickup_percentage <- (((es_pickup - mongo_pickup)/es_pickup)*100)
return_percentage <- (((es_return - mongo_return)/es_return)*100)

if (
  (abs(delivered_percentage) >= 16) 
  || (abs(dispatched_percentage) >= 30) 
  || (abs(pickup_percentage) >= 16) 
  || (abs(return_percentage) >= 16))
{
  system2('python', args = c('/data1/delhivery/es_mongo_sync/mail_send_essink.py',mongo_delivered,es_delivered,mongo_dispatched,es_dispatched,mongo_pickup,es_pickup,mongo_return,es_return))
}


