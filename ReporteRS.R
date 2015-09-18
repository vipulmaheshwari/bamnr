##################### Including All Required Packages ################################

suppressPackageStartupMessages(library(xtable))
suppressPackageStartupMessages(library(reshape))
suppressPackageStartupMessages(library(reshape2))
suppressPackageStartupMessages(library(googleVis))
suppressPackageStartupMessages(library(ReporteRs))
library('ReporteRs')
library('googleVis')
op<-options(gvis.plot.tag="chart")
#################### Reading All Required CSV Files ##################################

############# Slide 3 csv
zz_rep_13_10_3 = read.csv("~/R new10/zz_rep_13_10_3.csv")
slide_3_plan = read.csv("~/R new10/mannual/slide_3_plan.csv")

########### Slide 4 csv
zz_rep_4_5 = read.csv("~/R new10/zz_rep_4_5.csv")
slide_4_plan=read.csv("~/R new10/mannual/slide_4_plan.csv")

########### Slide 5 csv
zz_rep_4_5 = read.csv("~/R new10/zz_rep_4_5.csv")

########### Slide 6,7,8 csv
Lane_matrix = read.csv("~/R new10/mannual/Lane_Matrix.csv")
zz_rep_24 = read.csv("~/R new10/zz_rep_24.csv")

########### Slide 10 csv
zz_rep_16_22 = read.csv("~/R new10/zz_rep_16_22.csv")
zz_rep_10_pdd_minus_fdd = read.csv("~/R new10/cl_rep_10_pdd_minus_fdd.csv")
zz_rep_10_ed_minus_fdd = read.csv("~/R new10/cl_rep_10_ed_minus_fdd.csv")
cl_cs_pt_rep_13_10_3_zn = read.csv("~/R new10/cl_cs_pt_rep_13_10_3_zn.csv")
cl_zn_rep_10_pd=read.csv("~/R new10/cl_zn_rep_10_pd.csv")

########### Slide 11 csv
zz_rep_11_ivd_minus_pd = read.csv("~/R new10/occ_cl_rep_11_ivd_minus_pd.csv")
zz_rep_11_fbd_minus_ivd = read.csv("~/R new10/occ_cl_rep_11_fbd_minus_ivd.csv")
panel_use_m = read.csv("~/R new10/mannual/panel_use_m.csv")

########### Slide 12 csv
zz_rd_rto_pd=read.csv("~/R new10/zz_rd_rto_pd.csv")
closure_breach = read.csv("~/R new10/closure_breach.csv")
zz_rep_13_10_3 = read.csv("~/R new10/zz_rep_13_10_3.csv")
week_pin_count=read.csv("~/R new10/cl_week_pin_count.csv")
city_centre=read.csv("~/R new10/mannual/city_centre_m.csv")
bags_count=read.csv("~/R new10/bags_count.csv")
lane_mapping=read.csv("~/R new10/mannual/lane_mapping_m.csv")
Tonnage_m <- read.csv("~/R new10/mannual/Tonnage_m.csv")
Cost_14_m <- read.csv("~/R new10/mannual/Cost_14_m.csv")

########### Slide 13 csv
cl_cs_pt_rep_13_10_3_zn = read.csv("~/R new10/cl_cs_pt_rep_13_10_3_zn.csv")
zz_rd_rto_pd=read.csv("~/R new10/zz_rd_rto_pd.csv")
cl_zn_rep_10_pd=read.csv("~/R new10/cl_zn_rep_10_pd.csv")
week_pin_count=read.csv("~/R new10/cl_week_pin_count.csv")
pin_code_mapping=read.csv("~/R new10/mannual/pin_code_mapping_m.csv")
Reach_m <- read.csv("~/R new10/mannual/Reach_m.csv")

########### Slide 14 csv
week_dl_count=read.csv("~/R new10/week_dl_count.csv")
nsl_week_misrouting=read.csv("~/R new10/nsl_week_misrouting.csv")
closure_breach = read.csv("~/R new10/closure_breach.csv")
cl_cs_pt_rep_13_10_3_zn = read.csv("~/R new10/cl_cs_pt_rep_13_10_3_zn.csv")
dct_sum=read.csv("~/R new10/dct_sum.csv")
Calls_per_ship <- read.csv("~/R new10/mannual/Calls_per_ship_m.csv")
NDR_NPS_m <- read.csv("~/R new10/mannual/NDR_NPS_m.csv")
Cost_m <- read.csv("~/R new10/mannual/Cost_m.csv")

################# Slide 16, 22 csv
zz_rep_16_22 = read.csv("~/R new10/zz_rep_16_22.csv")
Lane_matrix = read.csv("~/R new10/mannual/Lane_Matrix.csv")

################# Slide 24, 25 csv
cl_cs_pt_rep_13_10_3_zn = read.csv("~/R new10/cl_cs_pt_rep_13_10_3_zn.csv")
cl_cs_pt_rep_13_10_3_zn = read.csv("~/R new10/cl_cs_pt_rep_13_10_3_zn.csv")

################# Slide 27, 28, 29 csv
zz_rep_11_ivd_minus_pd = read.csv("~/R new10/occ_cl_rep_11_ivd_minus_pd.csv")
zz_rep_11_fbd_minus_ivd = read.csv("~/R new10/occ_cl_rep_11_fbd_minus_ivd.csv")
panel_use_m=read.csv("~/R new10/mannual/panel_use_m.csv")
Cost1_m <- read.csv("~/R new10/mannual/Cost1_m.csv")

################# Slide 32, 33, 34 csv
zz_rep_13_10_3 = read.csv("~/R new10/zz_rep_13_10_3.csv")
dct_sum=read.csv("~/R new10/dct_sum.csv")
closure_breach=read.csv("~/R new10/closure_breach.csv")
cl_zn_rep_10_pd=read.csv("~/R new10/cl_zn_rep_10_pd.csv")
zz_rd_rto_pd=read.csv("~/R new10/zz_rd_rto_pd.csv")
cl_cs_pt_rep_13_10_3_zn = read.csv("~/R new10/cl_cs_pt_rep_13_10_3_zn.csv")
week_pin_count=read.csv("~/R new10/cl_week_pin_count.csv")
pin_code_mapping=read.csv("~/R new10/mannual/pin_code_mapping_m.csv")
Reach_m <- read.csv("~/R new10/mannual/Reach_m.csv")
Cost_m <- read.csv("~/R new10/mannual/Cost_m.csv")

###################### R Script For Slides ###################################
zz_rep_13_10_3_op1 = zz_rep_13_10_3 %>%
  mutate(day_3=strftime(strptime(X_id.dl_date ,  "%j") , "%a"),
         date_3=strftime(strptime(X_id.dl_date ,  "%j") , "%D")
  )

slide_3_min_mon = zz_rep_13_10_3_op1 %>%
  filter(day_3=="Sun") %>%
  #group_by(dl_count) %>%
  summarize(min_mon = min(X_id.dl_date))
slide_3_min_mon = as.integer(slide_3_min_mon)

############################## Slide 3 ##################################################
zz_rep_13_10_3_op2 = zz_rep_13_10_3_op1 %>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


zz_rep_13_10_3_op2$wkend_dt = as.character(zz_rep_13_10_3_op2$wkend_dt)

zz_rep_13_10_3_op2$wkend_dt = as.POSIXct(zz_rep_13_10_3_op2$wkend_dt , format="%j")


zz_rep_13_10_3_op3 = zz_rep_13_10_3_op2 %>%
  filter(X_id.dl_pt %in% c("COD" , "Pre-paid" , "Pickup" , "Cash"))%>%
  mutate(payment_type = ifelse(X_id.dl_pt %in% c("COD" , "Pre-paid") , "Forward",
                               ifelse(X_id.dl_pt %in% c("Pickup") , "Reverse",
                                      ifelse(X_id.dl_pt %in% c("Cash") , "Cash","NA"
                                             
                                      )))) %>%
  group_by (wkend_dt , payment_type) %>%
  summarise(Actual_Volume = sum(dl_count)) %>%  
arrange(wkend_dt)


zz_rep_13_10_3_op3$wkend_dt = as.character(zz_rep_13_10_3_op3$wkend_dt)

zz_rep_13_10_3_op4 = melt(zz_rep_13_10_3_op3 , id = c("wkend_dt" , "payment_type") )

zz_rep_13_10_3_op5 = dcast(zz_rep_13_10_3_op4, wkend_dt~payment_type  , value.var="value")

zz_rep_13_10_3_op5$wkend_dt = strftime(zz_rep_13_10_3_op5$wkend_dt,format="%D")

zz_rep_13_10_3_op5 = zz_rep_13_10_3_op5%>%
  rowwise()%>%
  mutate(Actual_Total = sum(Cash,  Forward,  Reverse))
#
slide_3_plan$wkend_dt = as.character(slide_3_plan$wkend_dt)
#slide_3_plan = dplyr::rename(slide_3_plan ,  Plan_Total = Total)

zz_rep_13_10_3_op6 = inner_join( slide_3_plan, zz_rep_13_10_3_op5 , by="wkend_dt")

zz_rep_13_10_3_op6 = zz_rep_13_10_3_op6%>%
  mutate(Gap = Actual_Total-Plan_Total )

zz_rep_13_10_3_op6 = zz_rep_13_10_3_op6%>%mutate(Gap_Perc = round((Gap/Plan_Total*100),1))

zz_rep_13_10_3_op7 = melt(zz_rep_13_10_3_op6 , id = c("wkend_dt"))%>%
  mutate(value=ifelse(value!="Gap_Perc" , as.character(round(value,0)) , paste(value , "%"))) 
zz_rep_13_10_3_op8 = zz_rep_13_10_3_op7%>%
  dcast(variable~wkend_dt , value.var="value")

x <- c("Plan_Total", "Plan_Forward", "Plan_Reverse"  , "Plan_Cash" , 
       "Actual_Total"  , "Forward" , "Reverse"  , "Cash" , 
       "Gap" , "Gap_Perc")

zz_rep_13_10_3_op8 = zz_rep_13_10_3_op8 %>%
  slice(match(x, variable))

######################################### Slide 4 R Code ##################################
zz_rep_4_5$X_id.dl_occ = as.character(zz_rep_4_5$X_id.dl_occ)

zz_rep_4_5_op2 = zz_rep_4_5 %>%
  select(X_id.dl_oc , dl_count) %>%
  group_by(X_id.dl_oc) %>%
  summarize(count = sum(dl_count))



zz_rep_4_5_op1 = zz_rep_4_5 %>%
  mutate(Origin = ifelse ( X_id.dl_occ=="Ahmedabad" , "AMD",
                           ifelse (X_id.dl_occ=="Chennai" , "MAA",
                                   ifelse (X_id.dl_occ=="Bangalore" , "BLR",
                                           ifelse (X_id.dl_occ=="Mumbai" , "BOM",
                                                   ifelse (X_id.dl_occ=="Kolkata" , "CCU",
                                                           ifelse (X_id.dl_occ=="Delhi NCR" , "DEL",
                                                                   ifelse (X_id.dl_occ=="Surat" , "STV",
                                                                           ifelse (X_id.dl_occ=="Hyderabad" , "HYD",
                                                                                   ifelse (X_id.dl_occ=="Panipat" , "PAP",
                                                                                           ifelse (X_id.dl_occ=="Jaipur" , "JAI","OTHERS"     
                                                                                           ))))))))))
         , Month = as.integer(strftime(strptime(X_id.dl_date ,  "%j") , "%m"))
  )



zz_rep_4_5_op1 = zz_rep_4_5_op1 %>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


zz_rep_4_5_op1$wkend_dt = as.character(zz_rep_4_5_op1$wkend_dt)

zz_rep_4_5_op1$wkend_dt = as.POSIXct(zz_rep_4_5_op1$wkend_dt , format="%j")


slide_4_max_month = max(zz_rep_4_5_op1$Month)
slide_4_prev_month = slide_4_max_month -1

zz_rep_4_5_op2 = zz_rep_4_5_op1 %>%
  filter(Month %in% c(slide_4_max_month , slide_4_prev_month)) %>%
  mutate (Month_flag = ifelse(Month==slide_4_max_month , "MTD" ,
                              ifelse(Month==slide_4_prev_month , "PREV" , "NA"
                              ))) 

zz_rep_4_5_op3 = zz_rep_4_5_op2 %>%
  group_by(Month_flag) %>%
  summarise(count=sum(dl_count))

slide_4_MTD_cnt = zz_rep_4_5_op3 %>% filter (Month_flag=="MTD") %>% select(count)
slide_4_PREV_cnt = zz_rep_4_5_op3 %>% filter (Month_flag=="PREV") %>% select(count)

zz_rep_4_5_op4 = zz_rep_4_5_op2 %>%
  filter(Month_flag %in% c("MTD" , "PREV")) %>%
  group_by(Origin , Month_flag) %>%
  summarise(count=sum(dl_count))

zz_rep_4_5_op5 = zz_rep_4_5_op4 %>%
  filter(Month_flag %in% c("PREV")) %>%
  mutate(Total = ifelse(Month_flag=="MTD" , count*100/slide_4_MTD_cnt,
                        ifelse(Month_flag=="PREV" ,count*100/slide_4_PREV_cnt,0)))

zz_rep_4_5_op5_22 = zz_rep_4_5_op4 %>%
  filter(Month_flag %in% c("MTD")) %>%
  mutate(Total = ifelse(Month_flag=="MTD" , count*100/slide_4_MTD_cnt,
                        ifelse(Month_flag=="PREV" ,count*100/slide_4_PREV_cnt,0)))


zz_rep_4_5_op5_2 = zz_rep_4_5_op1%>%
  filter(wkend_dt=="2015-05-02" |wkend_dt== "2015-05-09"|wkend_dt== "2015-05-16" | wkend_dt== "2015-05-23")%>%
  group_by (Origin)%>%
  summarise(Total = sum(dl_count))


zz_rep_4_5_op5_3 = zz_rep_4_5_op5_2%>%
  ungroup()%>%
  select(Origin , count=Total)


slide_4_plan$Origin=as.character(slide_4_plan$Origin)

zz_rep_4_5_op5_4 = inner_join (slide_4_plan , zz_rep_4_5_op5_3 , by="Origin")

zz_rep_4_5_op5_5 = zz_rep_4_5_op5_4%>%
  mutate(Gap = as.numeric(count)-as.numeric(Plan_count))

zz_rep_4_5_op5_5 =zz_rep_4_5_op5_5%>%
  dplyr::rename(Actual_count = count)%>%
  mutate(Gap_pct = round(as.numeric(Gap)*100/as.numeric(Plan_count),1))

zz_rep_4_5_op5 = rbind(zz_rep_4_5_op5,zz_rep_4_5_op5_22)


zz_rep_4_5_op6 =   zz_rep_4_5_op5 %>% select(Origin , Month_flag , Total)

zz_rep_4_5_op7 = dcast(zz_rep_4_5_op6, Origin~Month_flag  , value.var="Total")

zz_rep_4_5_op7 = zz_rep_4_5_op7%>%
  select(Origin , PREV , MTD)

x <- c("DEL", "BOM", "BLR"  , "CCU" , "STV" ,"JAI" , "AMD" , "PAP" , "HYD" , "MAA" , "OTHERS")
zz_rep_4_5_op8 = zz_rep_4_5_op7 %>%
  slice(match(x, Origin))

zz_rep_4_5_op8 = zz_rep_4_5_op8%>%
  mutate(MTD = paste(round(as.numeric(MTD), digits = 2),"%") , 
         PREV = paste(round(as.numeric(PREV), digits = 2),"%"))
final_vol <- right_join(zz_rep_4_5_op8, zz_rep_4_5_op5_5, by = "Origin", copy = FALSE)

######################################### Slide 5 R Code ##################################
zz_rep_5_op1 = zz_rep_4_5 %>%
  mutate(Origin = ifelse (         X_id.dl_oc=="Delhi_S_PC (Delhi)" , "Delhi_S_PC",
                                   ifelse (X_id.dl_oc=="Del_Okhla_PC (Delhi)" , "Del_Okhla_PC",
                                           ifelse (X_id.dl_oc=="GGN_Gateway (Haryana)" , "GGN_Gateway",         
                                                   ifelse (X_id.dl_oc=="Kirtinagar_PC (Delhi)" , "Kirtinagar_PC",
                                                           ifelse (X_id.dl_oc=="Bhiwandi_Pc (Maharashtra)" , "Bhiwandi_Pc",
                                                                   ifelse (X_id.dl_oc=="Mumbai_Andheri_PC (Maharashtra)" , "Mumbai_Andheri PC",
                                                                           ifelse (X_id.dl_oc=="Chennai_Alandur _Pc (Tamil Nadu)" , "Chennai_Alandur",
                                                                                   ifelse (X_id.dl_oc=="Hyd_Hub (Andhra Pradesh)" , "Hyd_Hub",
                                                                                           ifelse (X_id.dl_oc=="HS18 Daruhera Implant (Delhi)" , "HS18 Daruhera Implant",
                                                                                                   ifelse (X_id.dl_oc=="Blr_Domlur (Karnataka)" , "Blr_Domlur",
                                                                                                           ifelse (X_id.dl_oc=="Tirupur (Tamil Nadu)" , "Tirupur",
                                                                                                                   ifelse (X_id.dl_oc=="Chandigarh_Hub (Chandigarh)" , "Chandigarh_Hub",
                                                                                                                           ifelse (X_id.dl_oc=="Pune Hub (Maharashtra)" , "Pune Hub",       
                                                                                                                                   ifelse (X_id.dl_oc=="BLR_HegdeNagar_PC (Karnataka)" , "BLR_HegdeNagar_PC",
                                                                                                                                           ifelse (X_id.dl_oc=="CCU_Gopalpur_PC (West Bengal)" , "CCU_Gopalpur_PC",
                                                                                                                                                   ifelse (X_id.dl_oc=="Surat_Pc (Gujarat)" , "Surat_Pc",
                                                                                                                                                           ifelse (X_id.dl_oc=="Jaipur_Hub (Rajasthan)" , "Jaipur_Hub",
                                                                                                                                                                   ifelse (X_id.dl_oc=="AMD_PC (Gujarat)" , "AMD_PC",
                                                                                                                                                                           ifelse (X_id.dl_oc=="Panipat_PC (Haryana)" , "Panipat_PC",
                                                                                                                                                                                   ifelse (X_id.dl_oc=="Indore_Las (Madhya Pradesh)" , "Indore_Las","OTHERS"     
                                                                                                                                                                                   )))))))))))))))))))),
         day_5=strftime(strptime(X_id.dl_date ,  "%j") , "%a"))

slide_5_min_mon = zz_rep_5_op1 %>%
  filter(day_5=="Sun") %>%
  #group_by(dl_count) %>%
  summarize(min_mon = min(X_id.dl_date))

slide_5_min_mon = as.integer(slide_5_min_mon)


zz_rep_5_op2 = zz_rep_5_op1 %>%
  filter(X_id.dl_date>=slide_5_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_5_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_5_min_mon)+6)


zz_rep_5_op2$wkend_dt = as.character(zz_rep_5_op2$wkend_dt)

zz_rep_5_op2$wkend_dt = as.POSIXct(zz_rep_5_op2$wkend_dt , format="%j")


zz_rep_5_op3 = zz_rep_5_op2 %>%  group_by (wkend_dt , Origin) %>%
  summarise(Actual_Volume = sum(dl_count)) %>%
  arrange(Actual_Volume)



zz_rep_5_op3$Origin = as.character(zz_rep_5_op3$Origin)
zz_rep_5_op3$wkend_dt = as.character(zz_rep_5_op3$wkend_dt)

zz_rep_5_op4 = melt(zz_rep_5_op3 , id.vars = c("Origin" , "wkend_dt") )%>%
  arrange(as.integer(value))

zz_rep_5_op5 = dcast(zz_rep_5_op4, Origin~wkend_dt  , value.var="value") %>%
  filter(Origin!="OTHERS")%>%
  arrange(desc(`2015-05-23`))

zz_rep_5_op33 =zz_rep_5_op3%>%
  group_by (Origin) %>%
  filter(wkend_dt=="2015-05-23")%>%
  summarise(sum = sum(Actual_Volume))%>%
  mutate(pct=100*sum/sum(sum))%>%
  filter(Origin!="OTHERS")%>%
  arrange(desc(pct)) %>%
  select(Origin , pct)
zz_rep_5_op33 = zz_rep_5_op33%>%
  mutate (pct = paste(round(as.numeric(pct),1),"%"))
zz_rep_5_op5 = inner_join(zz_rep_5_op33 , zz_rep_5_op5 ,by="Origin")
zz_rep_5_op5 <- zz_rep_5_op5[-3]
zz_rep_5_op5_1 <- (prettyNum(zz_rep_5_op5, big.interval = 3,big.mark=","))
######################################### Slide 6, 7, 8 R Code ##################################
Lane_matrix2=Lane_matrix %>%
  select(City , Tier.Type)

zz_rep_24 <- data.frame(lapply(zz_rep_24, as.character), stringsAsFactors=FALSE)

Lane_matrix2$City = as.character(Lane_matrix2$City)
# zz_rep_6_7 = read.csv("~/R new/zz-rep-6-7.csv")
# zz_rep_6_7$X_id.dl_cnc = as.character(zz_rep_6_7$X_id.dl_cnc)


zz_rep_7_op1 = left_join(zz_rep_24, Lane_matrix2, by = c("X_id.dl_cnc" = "City")) %>%
  distinct()

zz_rep_7_op2 = zz_rep_7_op1 %>%filter(Tier.Type %in% 
                                        c("Metro" , "Tier 2" , "Tier 1" , "Tier 3")) %>%
  mutate(Origin = ifelse ( X_id.dl_cnc=="Ahmedabad" , "AMD",
                           ifelse (X_id.dl_cnc=="Chennai" , "MAA",
                                   ifelse (X_id.dl_cnc=="Bangalore" , "BLR",
                                           ifelse (X_id.dl_cnc=="Mumbai" , "BOM" , 
                                                   ifelse (X_id.dl_cnc=="Kolkata" , "CCU",
                                                           ifelse (X_id.dl_cnc=="Delhi NCR" , "DEL",
                                                                   ifelse (X_id.dl_cnc=="Hyderabad" , "HYD",
                                                                           ifelse (X_id.dl_cnc=="Pune" , "PNQ","OTHERS"
                                                                           )))))))),
         Tier= ifelse(Tier.Type %in%c("Metro" ) , "Metro" ,
                      ifelse(Tier.Type %in%c("Tier 1" ) , "Tier 1" ,      "Tier 2/3"))         
  )




zz_rep_7_op2 = zz_rep_7_op2 %>%
  
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)+as.integer(slide_3_min_mon)+6) 


zz_rep_7_op2$wkend_dt = as.character(zz_rep_7_op2$wkend_dt)

zz_rep_7_op2$wkend_dt = as.POSIXct(zz_rep_7_op2$wkend_dt , format="%j")



zz_rep_7_op3 = zz_rep_7_op2%>%select(X_id.dl_date,  X_id.dl_occ  ,
                                     X_id.dl_cnc,  X_id.dl_cs_ss,  dl_count,  Tier,	Origin,	wkend_dt)%>%
  filter(X_id.dl_occ!="" , X_id.dl_cnc!="")

zz_rep_7_op3_metro = zz_rep_7_op3%>%
  group_by  ( wkend_dt , Origin ) %>%
  summarize(totcount = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*totcount/sum(totcount))


zz_rep_7_op3_metro2 = zz_rep_7_op3_metro%>%
  select(wkend_dt,  Origin,  totcount)%>%
  dcast(Origin~wkend_dt  , value.var="totcount")


x <- c("DEL", "BOM", "BLR"  , "CCU" , "HYD"  , "MAA"  , "AMD" , "PNQ"  , "OTHERS")
zz_rep_7_op3_metro2 = zz_rep_7_op3_metro2 %>%
  slice(match(x, Origin))

zz_rep_7_op3_metro3 = zz_rep_7_op3_metro %>%
  filter(wkend_dt=="2015-05-23")%>%
  ungroup()%>%
  select(Origin , pct)%>%
  slice(match(x, Origin))

##zz_rep_7_op3_metro =  zz_rep_7_op3_metro%>%select(Origin , pct)
zz_rep_7_op3_metro3 = zz_rep_7_op3_metro3%>%
  mutate (pct = paste(round(as.numeric(pct),1),"%"))

zz_rep_7_op3_metro33 = inner_join(zz_rep_7_op3_metro3 , zz_rep_7_op3_metro2,
                                  by="Origin")

zz_rep_7_op3_metro33 <- zz_rep_7_op3_metro33[-3]
colnames(zz_rep_7_op3_metro33)[1] <- "Destination: Metro"
zz_rep_7_op3_metro33 <- prettyNum(zz_rep_7_op3_metro33, big.interval = 3,big.mark=",")
####################################Tier 1#############################
zz_rep_7_op22 = zz_rep_7_op1 %>%filter(Tier.Type %in% 
                                         c("Metro" , "Tier 2" , "Tier 1" , "Tier 3")) %>%
  mutate(Origin = ifelse ( X_id.dl_cnc=="Guwahati" , "Guwahati",
                           ifelse (X_id.dl_cnc=="Lucknow" , "Lucknow",
                                   ifelse (X_id.dl_cnc=="Surat" , "Surat",
                                           ifelse (X_id.dl_cnc=="Goa" , "Goa" ,
                                                   ifelse (X_id.dl_cnc=="Bhubaneshwar" , "Bhubaneshwar" ,
                                                           ifelse (X_id.dl_cnc=="Jaipur" , "Jaipur" ,
                                                                   ifelse (X_id.dl_cnc=="Chandigarh" , "Chandigarh" ,
                                                                           ifelse (X_id.dl_cnc=="Vishakhapatnam" , "Vishakhapatnam" ,
                                                                                   ifelse (X_id.dl_cnc=="Indore" , "Indore" ,
                                                                                           ifelse (X_id.dl_cnc=="Nagpur" , "Nagpur" ,
                                                                                                   ifelse (X_id.dl_cnc=="Bhopal" , "Bhopal" ,
                                                                                                           ifelse (X_id.dl_cnc=="Coimbatore" , "Coimbatore" ,
                                                                                                                   ifelse (X_id.dl_cnc=="Srinagar" , "Srinagar" ,
                                                                                                                           ifelse (X_id.dl_cnc=="Pondicherry" , "Pondicherry" ,
                                                                                                                                   ifelse (X_id.dl_cnc=="Howrah" , "Howrah" ,
                                                                                                                                           ifelse (X_id.dl_cnc=="Patna" , "Patna", "OTHERS"
                                                                                                                                           ) ))))))))))))))),
         Tier= ifelse(Tier.Type %in%c("Metro" ) , "Metro" ,
                      ifelse(Tier.Type %in%c("Tier 1" ) , "Tier 1" ,      "Tier 2/3"))         
  )




zz_rep_7_op22 = zz_rep_7_op22 %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)+as.integer(slide_3_min_mon)+6) 


zz_rep_7_op22$wkend_dt = as.character(zz_rep_7_op22$wkend_dt)

zz_rep_7_op22$wkend_dt = as.POSIXct(zz_rep_7_op22$wkend_dt , format="%j")


zz_rep_7_op33 = zz_rep_7_op22%>%
  select(X_id.dl_date,  X_id.dl_occ  ,
         X_id.dl_cnc,  X_id.dl_cs_ss,	dl_count,	Tier,	Origin,	wkend_dt)%>%
  filter(X_id.dl_occ!="" , X_id.dl_cnc!="")

zz_rep_7_op3_t1 = zz_rep_7_op33%>%
  group_by  ( wkend_dt , Origin ) %>%
  summarize(totcount = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*totcount/sum(totcount))


zz_rep_7_op3_t1_2 = zz_rep_7_op3_t1%>%
  filter(Origin!="OTHERS")%>%
  select(wkend_dt,  Origin,  totcount)%>%
  dcast(Origin~wkend_dt  , value.var="totcount")%>%
  arrange(desc(`2015-05-23`))


zz_rep_7_op3_t1 = zz_rep_7_op3_t1 %>%
  filter(wkend_dt=="2015-05-23" , Origin!="OTHERS")%>%
  ungroup()%>%
  select(Origin , pct)%>%
  arrange(desc(pct))

zz_rep_7_op3_t1 = zz_rep_7_op3_t1%>%
  mutate (pct = paste(round(as.numeric(pct),1),"%"))
##zz_rep_7_op3_metro =  zz_rep_7_op3_metro%>%select(Origin , pct)

zz_rep_7_op3_t1_3 = inner_join(zz_rep_7_op3_t1 , zz_rep_7_op3_t1_2,
                               by="Origin")
zz_rep_7_op3_t1_3 <- zz_rep_7_op3_t1_3[-3]
colnames(zz_rep_7_op3_t1_3)[1] <- "Destination: Tier 1"
zz_rep_7_op3_t1_3 <- prettyNum(zz_rep_7_op3_t1_3, big.interval = 3,big.mark=",")
############################################Tier 2/3 ###################################################
zz_rep_7_op222 = zz_rep_7_op1 %>%filter(Tier.Type %in% 
                                          c("Metro" , "Tier 2" , "Tier 1" , "Tier 3")) %>%
  mutate(Origin = ifelse ( X_id.dl_cnc=="Mangalore" , "Mangalore",
                           ifelse (X_id.dl_cnc=="Ludhiana" , "Ludhiana",
                                   ifelse (X_id.dl_cnc=="Vadodara" , "Vadodara",
                                           ifelse (X_id.dl_cnc=="Gulbarga" , "Gulbarga" ,
                                                   ifelse (X_id.dl_cnc=="Durg-Bhilainagar" , "Durg-Bhilainagar" ,
                                                           ifelse (X_id.dl_cnc=="NSZ" , "NSZ" ,
                                                                   ifelse (X_id.dl_cnc=="Dhanbad" , "Dhanbad" ,
                                                                           ifelse (X_id.dl_cnc=="Raipur" , "Raipur" ,
                                                                                   ifelse (X_id.dl_cnc=="Mysore" , "Mysore" ,
                                                                                           ifelse (X_id.dl_cnc=="Rourkela" , "Rourkela" ,
                                                                                                   ifelse (X_id.dl_cnc=="Tumkur" , "Tumkur" ,
                                                                                                           ifelse (X_id.dl_cnc=="Shillong" , "Shillong" ,
                                                                                                                   ifelse (X_id.dl_cnc=="Rewa" , "Rewa" ,
                                                                                                                           ifelse (X_id.dl_cnc=="Jalandhar" , "Jalandhar" ,
                                                                                                                                   ifelse (X_id.dl_cnc=="Vapi" , "Vapi" ,
                                                                                                                                           ifelse (X_id.dl_cnc=="Tirupur" , "Tirupur" ,
                                                                                                                                                   ifelse (X_id.dl_cnc=="Amritsar" , "Amritsar" ,
                                                                                                                                                           ifelse (X_id.dl_cnc=="Rudrapur" , "Rudrapur" ,
                                                                                                                                                                   ifelse (X_id.dl_cnc=="Gorakhpur" , "Gorakhpur" ,
                                                                                                                                                                           ifelse (X_id.dl_cnc=="Ujjain" , "Ujjain" ,
                                                                                                                                                                                   ifelse (X_id.dl_cnc=="Behrampur" , "Behrampur" ,
                                                                                                                                                                                           ifelse (X_id.dl_cnc=="Dehradun" , "Dehradun" ,
                                                                                                                                                                                                   ifelse (X_id.dl_cnc=="Nashik" , "Nashik" ,
                                                                                                                                                                                                           ifelse (X_id.dl_cnc=="Karur" , "Karur" ,
                                                                                                                                                                                                                   ifelse (X_id.dl_cnc=="Jamnagar" , "Jamnagar" , "OTHERS"
                                                                                                                                                                                                                   ) )))))))))))))))))))))))),
         Tier= ifelse(Tier.Type %in%c("Metro" ) , "Metro" ,
                      ifelse(Tier.Type %in%c("Tier 1" ) , "Tier 1" ,      "Tier 2/3"))         
  )




zz_rep_7_op222 = zz_rep_7_op222 %>%
  
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)+as.integer(slide_3_min_mon)+6) 


zz_rep_7_op222$wkend_dt = as.character(zz_rep_7_op222$wkend_dt)

zz_rep_7_op222$wkend_dt = as.POSIXct(zz_rep_7_op222$wkend_dt , format="%j")


zz_rep_7_op333 = zz_rep_7_op222%>%
  select(X_id.dl_date,  X_id.dl_occ  ,
         X_id.dl_cnc,  X_id.dl_cs_ss,  dl_count,	Tier,	Origin,	wkend_dt)%>%
  filter(X_id.dl_occ!="" , X_id.dl_cnc!="")

zz_rep_7_op3_t2 = zz_rep_7_op333%>%
  group_by  ( wkend_dt , Origin ) %>%
  summarize(totcount = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*totcount/sum(totcount))


zz_rep_7_op3_t2_2 = zz_rep_7_op3_t2%>%
  select(wkend_dt,  Origin,  totcount)%>%
  dcast(Origin~wkend_dt  , value.var="totcount")



zz_rep_7_op3_t2 = zz_rep_7_op3_t2 %>%
  filter(wkend_dt=="2015-05-23" , Origin!="OTHERS")%>%
  ungroup()%>%
  select(Origin , pct)%>%
  arrange(desc(pct))

zz_rep_7_op3_t2 = zz_rep_7_op3_t2%>%
  mutate (pct = paste(round(as.numeric(pct),1),"%"))
##zz_rep_7_op3_metro =  zz_rep_7_op3_metro%>%select(Origin , pct)

zz_rep_7_op3_t2_3 = inner_join(zz_rep_7_op3_t2 , zz_rep_7_op3_t2_2,
                               by="Origin")

zz_rep_7_op3_t2_3 <- zz_rep_7_op3_t2_3[-3]
colnames(zz_rep_7_op3_t2_3)[1] <- "Destination: Tier 2/3"
zz_rep_7_op3_t2_3 <- prettyNum(zz_rep_7_op3_t2_3, big.interval = 3,big.mark=",")
######################################### Slide 9 R Code ##################################

######################################### Slide 10 R Code ##################################

zz_rep_10_op1 = zz_rep_16_22 %>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 
         
         
  )

zz_rep_10_op1$wkend_dt = as.character(zz_rep_10_op1$wkend_dt)

zz_rep_10_op1$wkend_dt = as.POSIXct(zz_rep_10_op1$wkend_dt , format="%j")




zz_rep_10_op2 = zz_rep_10_op1 %>%
  
  group_by (wkend_dt , X_id.dl_time )%>%
  summarise(sum = sum(dl_count)) %>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = cumsum(pct))



zz_rep_10_op22 = zz_rep_10_op2%>%
  filter(X_id.dl_time <4)%>%
  dcast(X_id.dl_time ~wkend_dt  , value.var="cumsum")


zz_rep_10_op22 = zz_rep_10_op22%>%
  mutate(X_id.dl_time = paste("D" ,X_id.dl_time ))
zz_rep_10_op22[,sapply(zz_rep_10_op22, is.numeric)] <-round(zz_rep_10_op22[,sapply(zz_rep_10_op22, is.numeric)],2)

zz_rep_10_p2_op1 = zz_rep_10_pdd_minus_fdd %>%
  filter(X_id.dl_date>=slide_3_min_mon  , 
         X_id.pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


zz_rep_10_p2_op1$wkend_dt = as.character(zz_rep_10_p2_op1$wkend_dt)

zz_rep_10_p2_op1$wkend_dt = as.POSIXct(zz_rep_10_p2_op1$wkend_dt , format="%j")


zz_rep_10_p2_op2 = zz_rep_10_p2_op1 %>%
  mutate(p2d_flag = ifelse(X_id.pddMinusFdd < 0 , 1,0
  )) %>%
  group_by(wkend_dt , p2d_flag)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(p2d_flag ==1)%>%
  dcast(p2d_flag~wkend_dt  ,value.var="pct")
zz_rep_10_p2_op2[,sapply(zz_rep_10_p2_op2, is.numeric)] <-round(zz_rep_10_p2_op2[,sapply(zz_rep_10_p2_op2, is.numeric)],2)

zz_rep_10_p3_op1 = zz_rep_10_ed_minus_fdd %>%
  filter(X_id.dl_date>=slide_3_min_mon , X_id.pt %in% c("COD" , "Pre-paid") ) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


zz_rep_10_p3_op1$wkend_dt = as.character(zz_rep_10_p3_op1$wkend_dt)

zz_rep_10_p3_op1$wkend_dt = as.POSIXct(zz_rep_10_p3_op1$wkend_dt , format="%j")


zz_rep_10_p3_op2 = zz_rep_10_p3_op1 %>%
  mutate(p2d_flag = ifelse(X_id.edMinusFdd < 0 , 1,0
  )) %>%
  group_by(wkend_dt , p2d_flag)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(p2d_flag ==1)%>%
  dcast(p2d_flag~wkend_dt  ,value.var="pct")
zz_rep_10_p3_op2[,sapply(zz_rep_10_p3_op2, is.numeric)] <-round(zz_rep_10_p3_op2[,sapply(zz_rep_10_p3_op2, is.numeric)],2)

zz_rep_24_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon , X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss=="Delivered" , "Delivered" , "Other")
  )


zz_rep_24_op1$wkend_dt = as.character(zz_rep_24_op1$wkend_dt)

zz_rep_24_op1$wkend_dt = as.POSIXct(zz_rep_24_op1$wkend_dt , format="%j")

zz_rep_24_op22 = zz_rep_24_op1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="Delivered")

zz_rep_24_op24 = zz_rep_24_op22 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")

cl_zn_rep_10_pd$X_id.pd = as.POSIXct(as.character(cl_zn_rep_10_pd$X_id.pd) , 
                                     format="%Y-%m-%dT%H:%M:%S")


cl_zn_rep_10_pd_op1 = cl_zn_rep_10_pd%>%
  filter(X_id.zn=="A")%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , format="%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_op1 = cl_zn_rep_10_pd_op1%>%
  filter(pd_hr<8)%>%  
  mutate(sdd_flag = ifelse(X_id.fddMinusPd==0,1,0
                           
                           
  ))

cl_zn_rep_10_pd_op1 = cl_zn_rep_10_pd_op1%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_op1$wkend_dt = as.character(cl_zn_rep_10_pd_op1$wkend_dt)

cl_zn_rep_10_pd_op1$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_op1$wkend_dt , format="%j")

cl_zn_rep_10_pd_op2 = cl_zn_rep_10_pd_op1%>%
  group_by( wkend_dt , sdd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_op3 = cl_zn_rep_10_pd_op2%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(sdd_flag~wkend_dt  ,value.var="pct")%>%
  filter(sdd_flag==0)
cl_zn_rep_10_pd_op3[,sapply(cl_zn_rep_10_pd_op3, is.numeric)] <-round(cl_zn_rep_10_pd_op3[,sapply(cl_zn_rep_10_pd_op3, is.numeric)],2)

################################3
cl_zn_rep_10_pd_op11 = cl_zn_rep_10_pd%>%
  filter(X_id.zn %in% c("B" , "C"))%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_op11 = cl_zn_rep_10_pd_op11%>%
  filter(pd_hr<16)%>%
  mutate(ndd_flag = ifelse(X_id.fddMinusPd<2,1,0
  ))



cl_zn_rep_10_pd_op11 = cl_zn_rep_10_pd_op11%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_op11$wkend_dt = as.character(cl_zn_rep_10_pd_op11$wkend_dt)

cl_zn_rep_10_pd_op11$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_op11$wkend_dt , format="%j")

cl_zn_rep_10_pd_op112 = cl_zn_rep_10_pd_op11%>%
  group_by( wkend_dt , ndd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_op113 = cl_zn_rep_10_pd_op112%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(ndd_flag~wkend_dt  ,value.var="pct")%>%
  filter(ndd_flag==0)
cl_zn_rep_10_pd_op113[,sapply(cl_zn_rep_10_pd_op113, is.numeric)] <-round(cl_zn_rep_10_pd_op113[,sapply(cl_zn_rep_10_pd_op113, is.numeric)],2)
###
###
zz_rep_24_op24_1 <- zz_rep_24_op24
colnames(zz_rep_24_op24_1)[1] <- "X_id.dl_time"
zz_rep_10_op22_1 <- rbind.fill(zz_rep_10_op22, zz_rep_24_op24_1)
zz_rep_10_op22_1$X_id.dl_time = ifelse((zz_rep_10_op22_1$X_id.dl_time == "Delivered"),"Delivery efficiency - %",zz_rep_10_op22_1$X_id.dl_time)

zz_rep_10_p2_op2_1 <- zz_rep_10_p2_op2
colnames(zz_rep_10_p2_op2_1)[1] <- "X_id.dl_time"
zz_rep_10_op22_1 <- rbind.fill(zz_rep_10_op22_1, zz_rep_10_p2_op2_1)
zz_rep_10_op22_1$X_id.dl_time = ifelse((zz_rep_10_op22_1$X_id.dl_time == "1"),"P2D Breach% (Old Promise) (Without NSL)",zz_rep_10_op22_1$X_id.dl_time)

zz_rep_10_p3_op2_1 <- zz_rep_10_p3_op2
colnames(zz_rep_10_p3_op2_1)[1] <- "X_id.dl_time"
zz_rep_10_op22_1 <- rbind.fill(zz_rep_10_op22_1, zz_rep_10_p3_op2_1)
zz_rep_10_op22_1$X_id.dl_time = ifelse((zz_rep_10_op22_1$X_id.dl_time == "1"),"P2D Breach% (New Promise) (With NSL)",zz_rep_10_op22_1$X_id.dl_time)

cl_zn_rep_10_pd_op113_1 <- cl_zn_rep_10_pd_op113
colnames(cl_zn_rep_10_pd_op113_1)[1] <- "X_id.dl_time"
zz_rep_10_op22_1 <- rbind.fill(zz_rep_10_op22_1, cl_zn_rep_10_pd_op113_1)
zz_rep_10_op22_1$X_id.dl_time = ifelse((zz_rep_10_op22_1$X_id.dl_time == "0"),"NDD Breach% - Zone B/C",zz_rep_10_op22_1$X_id.dl_time)

cl_zn_rep_10_pd_op3_1 <- cl_zn_rep_10_pd_op3
colnames(cl_zn_rep_10_pd_op3_1)[1] <- "X_id.dl_time"
zz_rep_10_op22_1 <- rbind.fill(zz_rep_10_op22_1, cl_zn_rep_10_pd_op3_1)
zz_rep_10_op22_1$X_id.dl_time = ifelse((zz_rep_10_op22_1$X_id.dl_time == "0"),"SDD Breach % - Zone A",zz_rep_10_op22_1$X_id.dl_time)
zz_rep_10_op22_1 <- zz_rep_10_op22_1[-2] 
colnames(zz_rep_10_op22_1)[1] <- "Metric"
zz_rep_10_op22_1$Dimensions <- zz_rep_10_op22_1$Metric
zz_rep_10_op22_0 <- zz_rep_10_op22_1[ , c("Dimensions", "Metric")]
zz_rep_10_op22_1 <- left_join(zz_rep_10_op22_0, zz_rep_10_op22_1, by = "Metric", copy = FALSE)
zz_rep_10_op22_1 <- zz_rep_10_op22_1[-10]
colnames(zz_rep_10_op22_1)[1] <- "Dimensions"
zz_rep_10_op22_1$Dimensions = ifelse((zz_rep_10_op22_1$Dimensions == "D 0" | zz_rep_10_op22_1$Dimensions == "D 1" | zz_rep_10_op22_1$Dimensions == "D 2" | zz_rep_10_op22_1$Dimensions == "D 3"),"Speed",zz_rep_10_op22_1$Dimensions)
zz_rep_10_op22_1$Dimensions = ifelse((zz_rep_10_op22_1$Dimensions == "Delivery efficiency - %" | zz_rep_10_op22_1$Dimensions == "P2D Breach% (New Promise) (With NSL)" | zz_rep_10_op22_1$Dimensions == "P2D Breach% (Old Promise) (Without NSL)" | zz_rep_10_op22_1$Dimensions == "NDD Breach% - Zone B/C" | zz_rep_10_op22_1$Dimensions == "SDD Breach % - Zone A"),"Reliability",zz_rep_10_op22_1$Dimensions)

######################################### Slide 11 R Code #################################
zz_rep_11_op1 = zz_rep_11_ivd_minus_pd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_op1$wkend_dt = as.character(zz_rep_11_op1$wkend_dt)

zz_rep_11_op1$wkend_dt = as.POSIXct(zz_rep_11_op1$wkend_dt , format="%j")

zz_rep_11_op2 = zz_rep_11_op1%>%
  group_by(wkend_dt,X_id.deltaHr)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))

zz_rep_11_op3 = zz_rep_11_op2 %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")
zz_rep_11_op3[,sapply(zz_rep_11_op3, is.numeric)] <-round(zz_rep_11_op3[,sapply(zz_rep_11_op3, is.numeric)],2)

zz_rep_11_2_op1 = zz_rep_11_fbd_minus_ivd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_2_op1$wkend_dt = as.character(zz_rep_11_2_op1$wkend_dt)

zz_rep_11_2_op1$wkend_dt = as.POSIXct(zz_rep_11_2_op1$wkend_dt , format="%j")

zz_rep_11_2_op2 = zz_rep_11_2_op1%>%
  group_by(wkend_dt , X_id.deltaHr   )%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))


zz_rep_11_2_op3 = zz_rep_11_2_op2 %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")
zz_rep_11_2_op3[,sapply(zz_rep_11_2_op3, is.numeric)] <-round(zz_rep_11_2_op3[,sapply(zz_rep_11_2_op3, is.numeric)],2)
###
###
panel_use_m_11 <- panel_use_m
zz_rep_11_op3_1 <- zz_rep_11_op3
colnames(zz_rep_11_op3_1)[1] <- "Metric"
panel_use_m_11 <- rbind.fill(panel_use_m_11, zz_rep_11_op3_1)

panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "<2"),"D<2 hr ",panel_use_m_11$Metric)
panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "3"),"D<4 hr ",panel_use_m_11$Metric)
panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "4"),"D<8 hr ",panel_use_m_11$Metric)
panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "1"),"Panel usage %",panel_use_m_11$Metric)
panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "5"),"Breach % ",panel_use_m_11$Metric)

panel_use_m_11 <- panel_use_m_11[-2:-9]

zz_rep_11_2_op3_1 <- zz_rep_11_2_op3
zz_rep_11_2_op3_1 <- zz_rep_11_2_op3_1[-2]
colnames(zz_rep_11_2_op3_1)[1] <- "Metric"
panel_use_m_11 <- rbind.fill(panel_use_m_11, zz_rep_11_2_op3_1)
for(i in 5:8)
{
  panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "<2"),"D<2 hr",panel_use_m_11$Metric)
  panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "<4"),"D<4 hr",panel_use_m_11$Metric)
  panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == "<8"),"D<8 hr",panel_use_m_11$Metric)
  panel_use_m_11$Metric = ifelse((panel_use_m_11$Metric == ">8"),"Breach %",panel_use_m_11$Metric) 
}
Cost1_m_1 <- Cost1_m
panel_use_m_11 <- rbind.fill(panel_use_m_11, Cost1_m_1)

panel_use_m_11$Dimension <- panel_use_m_11$Metric
Panel_use_m_0 <- panel_use_m_11[ , c("Dimension", "Metric")]
panel_use_m_11 <- left_join(Panel_use_m_0, panel_use_m_11, by = "Metric", copy = FALSE)
rownames(panel_use_m_11) <- NULL
colnames(panel_use_m_11)[1] <- "Dimensions"
panel_use_m_11 <- panel_use_m_11[-10]

panel_use_m_11$Dimensions = ifelse((panel_use_m_11$Dimensions == "Panel usage %"),"First Mile",panel_use_m_11$Dimensions)
panel_use_m_11$Dimensions = ifelse((panel_use_m_11$Dimensions == "D<2 hr " | panel_use_m_11$Dimensions == "D<4 hr " | panel_use_m_11$Dimensions == "D<8 hr " | panel_use_m_11$Dimensions == "Breach % "),"Processing",panel_use_m_11$Dimensions)
panel_use_m_11$Dimensions = ifelse((panel_use_m_11$Dimensions == "D<2 hr" | panel_use_m_11$Dimensions == "D<4 hr" | panel_use_m_11$Dimensions == "D<8 hr" | panel_use_m_11$Dimensions == "Breach %"),"Bagging",panel_use_m_11$Dimensions)
panel_use_m_11$Dimensions = ifelse((panel_use_m_11$Dimensions == "Man-days " | panel_use_m_11$Dimensions == "# of bikers " | panel_use_m_11$Dimensions == "# of vans "| panel_use_m_11$Dimensions == "Processing cost/shipment "),"Cost",panel_use_m_11$Dimensions)

######################################### Slide 12 R Code ##################################
city_centre$Scan.Location..I.City.=as.character(city_centre$Scan.Location..I.City.)
bags_count$X_id.oc=as.character(bags_count$X_id.oc)
lane_mapping$Lane=as.character(lane_mapping$Lane)
bags_count$X_id.cn=as.character(bags_count$X_id.cn)
bags_op1 = inner_join(bags_count,city_centre, by = c("X_id.oc" = "Scan.Location..I.City."))
bags_op1 = inner_join(bags_op1,city_centre, by = c("X_id.cn" = "Scan.Location..I.City."))
bags_op1 =bags_op1 %>%
  mutate(Lane = paste(City.x , City.y))
bags_op2 = inner_join(bags_op1,lane_mapping, by = c("Lane" = "Lane"))

bags_op3 = bags_op2%>%
  filter(as.integer(X_id.cd_day)>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((as.integer(X_id.cd_day) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

bags_op3$wkend_dt = as.character(bags_op3$wkend_dt)

bags_op3$wkend_dt = as.POSIXct(bags_op3$wkend_dt , format="%j")


bags_op4=bags_op3 %>%
  
  mutate(ageing_flag = ifelse (as.integer(aeging)>3 ,1,0))%>%
  group_by(wkend_dt, ageing_flag)%>%
  summarise(sum=sum(bag_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  filter(ageing_flag==1)%>%
  dcast(ageing_flag~wkend_dt , value.var="pct")
bags_op4[,sapply(bags_op4, is.numeric)] <-round(bags_op4[,sapply(bags_op4, is.numeric)],2)
############################################################
bags_op4_2=bags_op3 %>%
  mutate(lost_flag = ifelse(X_id.ls=="Discarded" , 1,0))%>%
  group_by(wkend_dt , lost_flag)%>%
  summarise(sum=sum(bag_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  filter(lost_flag==1)%>%
  dcast(lost_flag~wkend_dt , value.var="pct")
bags_op4_2[,sapply(bags_op4_2, is.numeric)] <-round(bags_op4_2[,sapply(bags_op4_2, is.numeric)],2)
bags_op4_3=bags_op3 %>%
  group_by(wkend_dt , Zone , aeging)%>%
  summarise(sum=sum(bag_count))%>%
  mutate(pct=sum/sum(sum))%>%
  mutate(cumsum=cumsum(pct))%>%
  filter(Zone %in% c("A" , "B" , "C") & aeging==1 | Zone %in% c("D" , "E") & aeging==2)%>%
  dcast(Zone+aeging~wkend_dt , value.var="cumsum")
bags_op4_3[,sapply(bags_op4_3, is.numeric)] <-round(bags_op4_3[,sapply(bags_op4_3, is.numeric)],2)
##################################
zz_rd_rto_pd_op1 = zz_rd_rto_pd%>%
  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rd_rto_pd_op1$wkend_dt = as.character(zz_rd_rto_pd_op1$wkend_dt)

zz_rd_rto_pd_op1$wkend_dt= as.POSIXct(zz_rd_rto_pd_op1$wkend_dt , format="%j")

zz_rd_rto_pd_op2=zz_rd_rto_pd_op1%>%  
  mutate(rto_flag = ifelse(X_id.sd_day-X_id.rd_day>15,1,0))%>%
  group_by(wkend_dt , rto_flag)%>%
  summarise(sum=sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  dcast(rto_flag~wkend_dt,value.var="pct")


zz_rd_rto_pd_op3=zz_rd_rto_pd_op1%>%
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)

zz_rd_rto_pd_op4=zz_rd_rto_pd_op3%>%
  group_by(wkend_dt )%>%
  mutate(id=1)%>%
  summarise(sum=sum(nx)/sum(n))%>%
  dcast(.~wkend_dt,value.var="sum")
###
###
Tonnage_m_1 <- Tonnage_m
bags_op4_1 <- bags_op4
colnames(bags_op4_1)[1] <- "Metric"
Tonnage_m_1 <- rbind.fill(Tonnage_m_1, bags_op4_1)
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "1"),"Bags (>3 days ageing)",Tonnage_m_1$Metric)

bags_op4_2_1 <- bags_op4_2
colnames(bags_op4_2_1)[1] <- "Metric"
Tonnage_m_1 <- rbind.fill(Tonnage_m_1, bags_op4_2_1) 
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "1"),"Loss Rate %",Tonnage_m_1$Metric)

bags_op4_3_1 <- bags_op4_3
colnames(bags_op4_3_1)[1] <- "Metric"
Tonnage_m_1 <- rbind.fill(Tonnage_m_1, bags_op4_3_1) 
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "A"),"24 hr closure - % Zone A",Tonnage_m_1$Metric)
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "B"),"24 hr closure - % Zone B",Tonnage_m_1$Metric)
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "C"),"24 hr closure - % Zone C",Tonnage_m_1$Metric)
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "D"),"24 hr closure - % Zone D",Tonnage_m_1$Metric)
Tonnage_m_1$Metric = ifelse((Tonnage_m_1$Metric == "E"),"24 hr closure - % Zone E",Tonnage_m_1$Metric)
Tonnage_m_1 <- rbind.fill(Tonnage_m_1, Cost_14_m)
Tonnage_m_1 <- Tonnage_m_1[-2:-4]
Tonnage_m_1 <- Tonnage_m_1[-9]

Tonnage_m_1$Dimension <- Tonnage_m_1$Metric
Tonnage_m_0 <- Tonnage_m_1[ , c("Dimension", "Metric")]
Tonnage_m_1 <- left_join(Tonnage_m_0, Tonnage_m_1, by = "Metric", copy = FALSE)
Tonnage_m_1 <- Tonnage_m_1[-8:-9]
colnames(Tonnage_m_1)[1] <- "Dimensions"

Tonnage_m_1$Dimensions = ifelse((Tonnage_m_1$Dimensions == "Air Tonnage " | Tonnage_m_1$Dimensions == "Surface Tonnage "| Tonnage_m_1$Dimensions == "% shipments (Air) "| Tonnage_m_1$Dimensions == "% shipments (Surface) "| Tonnage_m_1$Dimensions == "Bags (>3 days ageing)"| Tonnage_m_1$Dimensions == "Loss Rate %"| Tonnage_m_1$Dimensions == "24 hr closure - % Zone A"| Tonnage_m_1$Dimensions == "24 hr closure - % Zone B"| Tonnage_m_1$Dimensions == "24 hr closure - % Zone C"| Tonnage_m_1$Dimensions == "24 hr closure - % Zone D"| Tonnage_m_1$Dimensions == "24 hr closure - % Zone E"),"Line Haul",Tonnage_m_1$Dimensions)
Tonnage_m_1$Dimensions = ifelse((Tonnage_m_1$Dimensions == "Avg air line-haul cost " | Tonnage_m_1$Dimensions == "Avg surface line-haul cost " | Tonnage_m_1$Dimensions == "Total line haul cost (Expected) "| Tonnage_m_1$Dimensions == "Total line haul cost (Actual) "),"Cost",Tonnage_m_1$Dimensions)
for(i in 1:15)
{
  Tonnage_m_1$Max[i] <- max(Tonnage_m_1[i,3:7])
  Tonnage_m_1$Min[i] <- min(Tonnage_m_1[i,3:7])
  Tonnage_m_1$Target[i] <- max(Tonnage_m_1[ ,3:7])
}

#################Slide 13############################
zz_rep_24_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon , X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )

zz_rep_24_op1$wkend_dt = as.character(zz_rep_24_op1$wkend_dt)

zz_rep_24_op1$wkend_dt = as.POSIXct(zz_rep_24_op1$wkend_dt , format="%j")

zz_rep_24_op22 = zz_rep_24_op1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")

zz_rep_24_op23 = zz_rep_24_op22%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")
##############
zz_rd_rto_pd_op1 = zz_rd_rto_pd%>%
  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rd_rto_pd_op1$wkend_dt = as.character(zz_rd_rto_pd_op1$wkend_dt)

zz_rd_rto_pd_op1$wkend_dt= as.POSIXct(zz_rd_rto_pd_op1$wkend_dt , format="%j")

zz_rd_rto_pd_op2=zz_rd_rto_pd_op1%>%  
  mutate(rto_flag = ifelse(X_id.sd_day-X_id.rd_day>15,1,0))%>%
  group_by(wkend_dt , rto_flag)%>%
  summarise(sum=sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  dcast(rto_flag~wkend_dt,value.var="pct")
zz_rd_rto_pd_op2[,sapply(zz_rd_rto_pd_op2, is.numeric)] <-round(zz_rd_rto_pd_op2[,sapply(zz_rd_rto_pd_op2, is.numeric)],2)

zz_rd_rto_pd_op3=zz_rd_rto_pd_op1%>%
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)

zz_rd_rto_pd_op4=zz_rd_rto_pd_op3%>%
  group_by(wkend_dt )%>%
  mutate(id=1)%>%
  summarise(sum=sum(nx)/sum(n))%>%
  dcast(.~wkend_dt,value.var="sum")
zz_rd_rto_pd_op4[,sapply(zz_rd_rto_pd_op4, is.numeric)] <-round(zz_rd_rto_pd_op4[,sapply(zz_rd_rto_pd_op4, is.numeric)],2)
###############################################################
cust_ret_op1 = cl_zn_rep_10_pd%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))  %>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cust_ret_op1$wkend_dt = as.character(cust_ret_op1$wkend_dt)

cust_ret_op1$wkend_dt= as.POSIXct(cust_ret_op1$wkend_dt , format="%j")

cust_ret_op2 = cust_ret_op1%>%
  filter(X_id.pt=="Pickup")%>%
  mutate(day_diff = ifelse(X_id.fddMinusPd>2,3,X_id.fddMinusPd))%>%
  group_by(wkend_dt , day_diff)%>%
  summarise(sum= sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  mutate(cum_sum=cumsum(pct))%>%
  filter(day_diff<3)

cust_ret_op3 = cust_ret_op2%>%
  dcast(day_diff~wkend_dt , value.var="cum_sum")
cust_ret_op3[,sapply(cust_ret_op3, is.numeric)] <-round(cust_ret_op3[,sapply(cust_ret_op3, is.numeric)],2)
############################################################3
week_pin_count_op1=inner_join (week_pin_count , pin_code_mapping , by = c("X_id.pin" = "pin"))

week_pin_count_op1=week_pin_count_op1%>%
  filter(!(dispatch_center %in% c("NSZ" , "#NA"))) %>%
  filter(X_id.cl %in% c("Flipkart"))%>%
  group_by(X_id.dl_week)%>%
  summarise(pin_count=n_distinct(X_id.pin))%>%
  dcast(.~X_id.dl_week,value.var="pin_count")
###
###
zz_rep_24_op23_1 <- zz_rep_24_op23
colnames(zz_rep_24_op23_1)[1] <- "Metric"
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "RTO"),"Return Rate %",zz_rep_24_op23_1$Metric)
colnames(zz_rd_rto_pd_op2)[1] <- "Metric"
zz_rep_24_op23_1 <- rbind.fill(zz_rep_24_op23_1, zz_rd_rto_pd_op2)
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "1"),"RTO closure Breach- %",zz_rep_24_op23_1$Metric)
zz_rep_24_op23_1 <- zz_rep_24_op23_1[-2, ]
rownames(zz_rep_24_op23_1) <- NULL
zz_rd_rto_pd_op4_1 <- zz_rd_rto_pd_op4
colnames(zz_rd_rto_pd_op4_1)[1] <- "Metric"
zz_rep_24_op23_1 <- rbind.fill(zz_rep_24_op23_1, zz_rd_rto_pd_op4_1)
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "."),"RTO cycle(Days)",zz_rep_24_op23_1$Metric)
colnames(cust_ret_op3)[1] <- "Metric"
zz_rep_24_op23_1 <- rbind.fill(zz_rep_24_op23_1, cust_ret_op3)
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "0"),"Same Day Pickup",zz_rep_24_op23_1$Metric)
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "1"),"Pickup Within 1 Day",zz_rep_24_op23_1$Metric)
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "2"),"Pickup Within 2 Day",zz_rep_24_op23_1$Metric)
Reach_m_1 <- Reach_m
colnames(Reach_m_1)[1] <- "Metric"
zz_rep_24_op23_1 <- rbind.fill(zz_rep_24_op23_1, Reach_m_1)
zz_rep_24_op23_1 <- zz_rep_24_op23_1[-8, ]
colnames(zz_rep_24_op23_1)[2] <- "a"
colnames(zz_rep_24_op23_1)[3] <- "b"
colnames(zz_rep_24_op23_1)[4] <- "c"
colnames(zz_rep_24_op23_1)[5] <- "d"
colnames(zz_rep_24_op23_1)[6] <- "e"
colnames(zz_rep_24_op23_1)[7] <- "f"
colnames(zz_rep_24_op23_1)[8] <- "g"
colnames(zz_rep_24_op23_1)[9] <- "h"

week_pin_count_op1_1 <- week_pin_count_op1
colnames(week_pin_count_op1_1)[1] <- "Metric"
colnames(week_pin_count_op1_1)[2] <- "a"
colnames(week_pin_count_op1_1)[3] <- "b"
colnames(week_pin_count_op1_1)[4] <- "c"
colnames(week_pin_count_op1_1)[5] <- "d"
colnames(week_pin_count_op1_1)[6] <- "e"
colnames(week_pin_count_op1_1)[7] <- "f"
colnames(week_pin_count_op1_1)[8] <- "g"
colnames(week_pin_count_op1_1)[9] <- "h"
zz_rep_24_op23_1 <- rbind.fill(zz_rep_24_op23_1, week_pin_count_op1_1)
zz_rep_24_op23_1$Metric = ifelse((zz_rep_24_op23_1$Metric == "."),"Number of Pin-codes (Loaded)",zz_rep_24_op23_1$Metric)
zz_rep_24_op23_1 <- zz_rep_24_op23_1[-2] 

zz_rep_24_op23_1$Dimension <- zz_rep_24_op23_1$Metric
zz_rep_24_op23_0 <- zz_rep_24_op23_1[ , c("Dimension", "Metric")]
zz_rep_24_op23_1 <- left_join(zz_rep_24_op23_0, zz_rep_24_op23_1, by = "Metric", copy = FALSE)
zz_rep_24_op23_1 <- zz_rep_24_op23_1[-10]
colnames(zz_rep_24_op23_1)[1] <- "Dimensions"

zz_rep_24_op23_1$Dimensions = ifelse((zz_rep_24_op23_1$Dimensions == "Return Rate %" | zz_rep_24_op23_1$Dimensions == "RTO closure Breach- %"| zz_rep_24_op23_1$Dimensions == "RTO cycle(Days)"),"Returns",zz_rep_24_op23_1$Dimensions)
zz_rep_24_op23_1$Dimensions = ifelse((zz_rep_24_op23_1$Dimensions == "Same Day Pickup" | zz_rep_24_op23_1$Dimensions == "Pickup Within 1 Day" | zz_rep_24_op23_1$Dimensions == "Pickup Within 2 Day"| zz_rep_24_op23_1$Dimensions == "Pickup Within 2 Day"),"Cost",zz_rep_24_op23_1$Dimensions)
zz_rep_24_op23_1$Dimensions = ifelse((zz_rep_24_op23_1$Dimensions == "Pin-codes (Serviceable)" | zz_rep_24_op23_1$Dimensions == "Number of Pin-codes (Loaded)"),"Reach",zz_rep_24_op23_1$Dimensions)
zz_rep_24_op23_1 <- zz_rep_24_op23_1[-3:-4]

for(i in 1:8)
{
  zz_rep_24_op23_1$Max[i] <- max(zz_rep_24_op23_1$d[i],zz_rep_24_op23_1$e[i], zz_rep_24_op23_1$f[i], zz_rep_24_op23_1$g[i], zz_rep_24_op23_1$h[i] )
  zz_rep_24_op23_1$Min[i] <- min(zz_rep_24_op23_1$d[i],zz_rep_24_op23_1$e[i], zz_rep_24_op23_1$f[i], zz_rep_24_op23_1$g[i], zz_rep_24_op23_1$h[i] )
  zz_rep_24_op23_1$Target[i] <- max(zz_rep_24_op23_1$d[7] )  
}

#################Slide 14############################
nsl_week_misrouting_1 = nsl_week_misrouting %>%
  select(X_id.dl_week, dl_count) %>%
  group_by(X_id.dl_week) %>%
  summarize(count = sum(dl_count)) %>%
  right_join(week_dl_count, nsl_week_misrouting_1, by = "X_id.dl_week", copy = FALSE) %>%
  mutate(pct=100*count/dl_count)%>%
  mutate(cumsum = cumsum(pct)) %>%
  select(X_id.dl_week, pct) %>%
  dcast(.~X_id.dl_week , value.var="pct")
nsl_week_misrouting_1[,sapply(nsl_week_misrouting_1, is.numeric)] <-round(nsl_week_misrouting_1[,sapply(nsl_week_misrouting_1, is.numeric)],2)
###############
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

clsr_brch_op1 = loss_rate_op1%>%
  mutate(Del_diff=X_id.fdd_day-X_id.pd_day)%>%
  mutate(Breach_flag = ifelse(X_id.zn=="A" & Del_diff>1,1,
                              ifelse(X_id.zn=="B" & Del_diff>2 , 1,
                                     ifelse(X_id.zn=="C" & Del_diff>2 , 1,
                                            ifelse(X_id.zn=="D" & Del_diff>3 , 1,
                                                   ifelse(X_id.zn=="E" & Del_diff>3 , 1,0
                                                          
                                                   ))))))

clsr_brch_op2 = clsr_brch_op1%>%
  group_by(wkend_dt)%>%
  summarise(sum_total=sum(dl_count))


clsr_brch_op3 = clsr_brch_op1%>%
  filter(Breach_flag==1)%>%
  group_by(wkend_dt)%>%
  summarise(sum_breach=sum(dl_count))

##clsr_brch_op3
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)%>%
  dcast(.~wkend_dt , value.var="breach_perc")
clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)] <-round(clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)],2)
#######################################################
RVP_breach_op1=loss_rate_op1%>%
  filter(X_id.pt %in% c("Cash" , "Pickup"))%>%
  mutate(breach_flag= ifelse (X_id.cs %in% c("LOST" , "Canceled"),1,0))%>%
  group_by(wkend_dt,breach_flag)%>%
  summarise(sum=sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  arrange(desc(breach_flag))%>%
  mutate(cumsum=cumsum(pct))%>%
  filter(breach_flag==1)%>%
  dcast(.~wkend_dt,value.var="cumsum")
RVP_breach_op1[,sapply(RVP_breach_op1, is.numeric)] <-round(RVP_breach_op1[,sapply(RVP_breach_op1, is.numeric)],2)
##############################ZONE MIX############################################
zn_mix_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zn_mix_op1$wkend_dt = as.character(zn_mix_op1$wkend_dt)

zn_mix_op1$wkend_dt= as.POSIXct(zn_mix_op1$wkend_dt , format="%j")


zn_mix_op2 = zn_mix_op1%>%
  filter(X_id.dl_zn%in% c("A" , "B" , "C" , "D" , "E"))%>%
  group_by(wkend_dt , X_id.dl_zn )%>%
  summarise(zm=sum(dl_count))%>%
  mutate(zn_pct = zm*100/sum(zm))%>%
  mutate(cum_sum = cumsum(zn_pct))


zn_mix_op3 = zn_mix_op2%>%
  dcast(X_id.dl_zn~wkend_dt , value.var="zn_pct")
zn_mix_op3[,sapply(zn_mix_op3, is.numeric)] <-round(zn_mix_op3[,sapply(zn_mix_op3, is.numeric)],2)
#######################################################
dct_sum_op1 = dct_sum%>%
  group_by(X_id.dl_week)%>%
  summarise(sum_c = sum(dl_count) , sum_s=sum(dct_sum))%>%
  
  mutate(id=1 , sum = sum_s/sum_c)%>%
  dcast(id~X_id.dl_week, value.var="sum")
dct_sum_op1[,sapply(dct_sum_op1, is.numeric)] <-round(dct_sum_op1[,sapply(dct_sum_op1, is.numeric)],2)
###loss rate ###########
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

loss_rate_op2 =loss_rate_op1 %>%
  group_by(wkend_dt , X_id.cs)%>%
  summarise(sum=n())%>%
  mutate (loss_rate = sum*100/sum(sum))%>%
  filter(X_id.cs=="LOST")%>%
  dcast(X_id.cs~wkend_dt,value.var="loss_rate")
loss_rate_op2[,sapply(loss_rate_op2, is.numeric)] <-round(loss_rate_op2[,sapply(loss_rate_op2, is.numeric)],2)
###
###
nsl_week_misrouting_11 <- nsl_week_misrouting_1
colnames(nsl_week_misrouting_11)[1] <- "Metric"
colnames(nsl_week_misrouting_11)[2] <- "a"
colnames(nsl_week_misrouting_11)[3] <- "b"
colnames(nsl_week_misrouting_11)[4] <- "c"
colnames(nsl_week_misrouting_11)[5] <- "d"
colnames(nsl_week_misrouting_11)[6] <- "e"
colnames(nsl_week_misrouting_11)[7] <- "f"
colnames(nsl_week_misrouting_11)[8] <- "g"
colnames(nsl_week_misrouting_11)[9] <- "h"
nsl_week_misrouting_11$Metric = ifelse((nsl_week_misrouting_11$Metric == "."),"Mis-Route",nsl_week_misrouting_11$Metric)

clsr_brch_op5_1 <- clsr_brch_op5
colnames(clsr_brch_op5_1)[1] <- "Metric"
colnames(clsr_brch_op5_1)[2] <- "a"
colnames(clsr_brch_op5_1)[3] <- "b"
colnames(clsr_brch_op5_1)[4] <- "c"
colnames(clsr_brch_op5_1)[5] <- "d"
colnames(clsr_brch_op5_1)[6] <- "e"
colnames(clsr_brch_op5_1)[7] <- "f"
colnames(clsr_brch_op5_1)[8] <- "g"
colnames(clsr_brch_op5_1)[9] <- "h"
clsr_brch_op5_1$Metric = ifelse((clsr_brch_op5_1$Metric == "."),"Closure-breach %",clsr_brch_op5_1$Metric)
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, clsr_brch_op5_1)
loss_rate_op2_1 <- loss_rate_op2
colnames(loss_rate_op2_1)[1] <- "Metric"
colnames(loss_rate_op2_1)[2] <- "a"
colnames(loss_rate_op2_1)[3] <- "b"
colnames(loss_rate_op2_1)[4] <- "c"
colnames(loss_rate_op2_1)[5] <- "d"
colnames(loss_rate_op2_1)[6] <- "e"
colnames(loss_rate_op2_1)[7] <- "f"
colnames(loss_rate_op2_1)[8] <- "g"
colnames(loss_rate_op2_1)[9] <- "h"
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, loss_rate_op2_1)
nsl_week_misrouting_11$Metric = ifelse((nsl_week_misrouting_11$Metric == "LOST"),"Loss Rate", nsl_week_misrouting_11$Metric)
Calls_per_ship_1 <- Calls_per_ship
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, Calls_per_ship_1)
RVP_breach_op1_1 <- RVP_breach_op1
colnames(RVP_breach_op1_1)[1] <- "Metric"
colnames(RVP_breach_op1_1)[2] <- "a"
colnames(RVP_breach_op1_1)[3] <- "b"
colnames(RVP_breach_op1_1)[4] <- "c"
colnames(RVP_breach_op1_1)[5] <- "d"
colnames(RVP_breach_op1_1)[6] <- "e"
colnames(RVP_breach_op1_1)[7] <- "f"
colnames(RVP_breach_op1_1)[8] <- "g"
colnames(RVP_breach_op1_1)[9] <- "h"
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, RVP_breach_op1_1)
nsl_week_misrouting_11$Metric = ifelse((nsl_week_misrouting_11$Metric == "."),"RVP Abandon %", nsl_week_misrouting_11$Metric)
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, NDR_NPS_m)
zn_mix_op3_1 <- zn_mix_op3
colnames(zn_mix_op3_1)[1] <- "Metric"
colnames(zn_mix_op3_1)[2] <- "a"
colnames(zn_mix_op3_1)[3] <- "b"
colnames(zn_mix_op3_1)[4] <- "c"
colnames(zn_mix_op3_1)[5] <- "d"
colnames(zn_mix_op3_1)[6] <- "e"
colnames(zn_mix_op3_1)[7] <- "f"
colnames(zn_mix_op3_1)[8] <- "g"
colnames(zn_mix_op3_1)[9] <- "h"
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, zn_mix_op3_1)
dct_sum_op1_1 <- dct_sum_op1
colnames(dct_sum_op1_1)[1] <- "Metric"
colnames(dct_sum_op1_1)[2] <- "a"
colnames(dct_sum_op1_1)[3] <- "b"
colnames(dct_sum_op1_1)[4] <- "c"
colnames(dct_sum_op1_1)[5] <- "d"
colnames(dct_sum_op1_1)[6] <- "e"
colnames(dct_sum_op1_1)[7] <- "f"
colnames(dct_sum_op1_1)[8] <- "g"
colnames(dct_sum_op1_1)[9] <- "h"
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, dct_sum_op1_1)
nsl_week_misrouting_11$Metric = ifelse((nsl_week_misrouting_11$Metric == "1"),"# of attempts/parcel", nsl_week_misrouting_11$Metric)
colnames(Cost_m)[1] <- "Metric"
nsl_week_misrouting_11 <- rbind.fill(nsl_week_misrouting_11, Cost_m)
nsl_week_misrouting_11 <- nsl_week_misrouting_11[-2]

nsl_week_misrouting_11$Dimension <- nsl_week_misrouting_11$Metric
nsl_week_misrouting_0 <- nsl_week_misrouting_11[ , c("Dimension", "Metric")]
nsl_week_misrouting_11 <- left_join(nsl_week_misrouting_0, nsl_week_misrouting_11, by = "Metric", copy = FALSE)
nsl_week_misrouting_11 <- nsl_week_misrouting_11[-10]
colnames(nsl_week_misrouting_11)[1] <- "Dimensions"

nsl_week_misrouting_11$Dimensions = ifelse((nsl_week_misrouting_11$Dimensions == "Mis-Route" | nsl_week_misrouting_11$Dimensions == "Closure-breach %" | nsl_week_misrouting_11$Dimensions == "Loss Rate" | nsl_week_misrouting_11$Dimensions == "Calls/Shipment"| nsl_week_misrouting_11$Dimensions == "Reverse Pickup Breach % (RVP)" | nsl_week_misrouting_11$Dimensions == "RVP Abandon %"| nsl_week_misrouting_11$Dimensions == "NDR Failure %" | nsl_week_misrouting_11$Dimensions == "NPS"),"Failure",nsl_week_misrouting_11$Dimensions)
nsl_week_misrouting_11$Dimensions = ifelse((nsl_week_misrouting_11$Dimensions == "A" | nsl_week_misrouting_11$Dimensions == "B" | nsl_week_misrouting_11$Dimensions == "C" | nsl_week_misrouting_11$Dimensions == "D" | nsl_week_misrouting_11$Dimensions == "E" | nsl_week_misrouting_11$Dimensions == "# of attempts/parcel" | nsl_week_misrouting_11$Dimensions == "Avg shipment weight " | nsl_week_misrouting_11$Dimensions == "Cost/shipment "),"Cost",nsl_week_misrouting_11$Dimensions)
nsl_week_misrouting_11 <- nsl_week_misrouting_11[-3:-4]

for(i in 1:16)
{
  nsl_week_misrouting_11$Max[i] <- max(nsl_week_misrouting_11$d[i],nsl_week_misrouting_11$e[i], nsl_week_misrouting_11$f[i], nsl_week_misrouting_11$g[i], nsl_week_misrouting_11$h[i] )
  nsl_week_misrouting_11$Min[i] <- min(nsl_week_misrouting_11$d[i],nsl_week_misrouting_11$e[i], nsl_week_misrouting_11$f[i], nsl_week_misrouting_11$g[i], nsl_week_misrouting_11$h[i] )
  nsl_week_misrouting_11$Target[i] <- nsl_week_misrouting_11$d[12]  
}
nsl_week_misrouting_11 <- nsl_week_misrouting_11[-8]
#################Slide 15############################
# Title

#################Slide 16-22############################
zz_rep_16_op1 = zz_rep_16_22%>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_16_op1$wkend_dt = as.character(zz_rep_16_op1$wkend_dt)

zz_rep_16_op1$wkend_dt = as.POSIXct(zz_rep_16_op1$wkend_dt , format="%j")


zz_rep_16_op1<- data.frame(lapply(zz_rep_16_op1, as.character), stringsAsFactors=FALSE)

##zz_rep_16_op1$X_id.dl_cnc = as.character(zz_rep_16_op1$X_id.dl_cnc)
Lane_matrix2=Lane_matrix %>%
  select(City , Tier.Type)
Lane_matrix2<- data.frame(lapply(Lane_matrix2, as.character), stringsAsFactors=FALSE)


zz_rep_16_op2 = left_join(zz_rep_16_op1, Lane_matrix2, by = c("X_id.dl_cnc" = "City")) %>%
  distinct()

zz_rep_16_op3 = zz_rep_16_op2%>%
  filter(X_id.dl_occ %in% c("Delhi NCR" , "Bangalore" , "Hyderabad" , "Jaipur"
                            ,"Kolkata" , "Mumbai" , "Surat")) %>%
  mutate(Tier = ifelse( X_id.dl_occ==X_id.dl_cnc , X_id.dl_occ , 
                        ifelse(Tier.Type %in%c("Metro" ) , "Metro" ,
                               ifelse(Tier.Type %in%c("Tier 1" , "Tier 2" ) , "Tier 1/2","Others"
                               ))),
         DDel = ifelse(as.numeric(X_id.dl_time)<4 ,X_id.dl_time,">3" ))

zz_rep_16_op4 = zz_rep_16_op3%>%
  group_by(X_id.dl_occ , Tier,  wkend_dt , DDel  )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum=cumsum(pct))



zz_rep_16_op5_del = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Delhi NCR" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")

x <- c("Delhi NCR" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )


zz_rep_16_op4_del = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Delhi NCR" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume = sum(sum))



zz_rep_16_op4_del = zz_rep_16_op4_del %>%
  slice(match(x, Tier))

zz_rep_16_op5_del = inner_join(zz_rep_16_op4_del,zz_rep_16_op5_del , by="Tier") 


zz_rep_16_op5_bom = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Mumbai" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")

x <- c("Mumbai" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )

zz_rep_16_op4_bom = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Mumbai" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume = sum(sum))

zz_rep_16_op4_bom = zz_rep_16_op4_bom %>%
  slice(match(x, Tier))

zz_rep_16_op5_bom = inner_join(zz_rep_16_op4_bom,zz_rep_16_op5_bom , by="Tier") 

zz_rep_16_op5_blr = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Bangalore" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")

zz_rep_16_op4_blr = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Bangalore" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume = sum(sum))

x <- c("Bangalore" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )

zz_rep_16_op4_blr = zz_rep_16_op4_blr %>%
  slice(match(x, Tier))

zz_rep_16_op5_blr = inner_join(zz_rep_16_op4_blr,zz_rep_16_op5_blr , by="Tier") 

zz_rep_16_op5_ccu = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Kolkata" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")

zz_rep_16_op4_ccu = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Kolkata" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume = sum(sum))


x <- c("Kolkata" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )

zz_rep_16_op4_ccu = zz_rep_16_op4_ccu %>%
  slice(match(x, Tier))

zz_rep_16_op5_ccu = inner_join(zz_rep_16_op4_ccu,zz_rep_16_op5_ccu , by="Tier") 

zz_rep_16_op5_jai = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Jaipur" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")

zz_rep_16_op4_jai = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Jaipur" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume= sum(sum))

x <- c("Jaipur" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )

zz_rep_16_op4_jai = zz_rep_16_op4_jai %>%
  slice(match(x, Tier))


zz_rep_16_op5_jai = inner_join(zz_rep_16_op4_jai,zz_rep_16_op5_jai , by="Tier") 

zz_rep_16_op5_stv = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Surat" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")

zz_rep_16_op4_stv = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Surat" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume= sum(sum))

x <- c("Surat" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )


zz_rep_16_op4_stv = zz_rep_16_op4_stv %>%
  slice(match(x, Tier))

zz_rep_16_op5_stv = inner_join(zz_rep_16_op4_stv,zz_rep_16_op5_stv , by="Tier") 

zz_rep_16_op5_hyd = zz_rep_16_op4 %>%
  mutate(cumsum = round(cumsum,1))%>%
  filter(X_id.dl_occ=="Hyderabad" ,DDel!=">3")%>%
  dcast(Tier+DDel~wkend_dt  ,value.var="cumsum")
# 
# 

zz_rep_16_op4_hyd = zz_rep_16_op4%>%
  filter(X_id.dl_occ=="Hyderabad" , wkend_dt=="2015-05-23")%>%
  group_by(Tier)%>%
  summarize(Volume = sum(sum))

x <- c("Hyderabad" , "Metro" , 
       "Tier 1/2" ,
       "Others"   )

zz_rep_16_op4_hyd = zz_rep_16_op4_hyd %>%
  slice(match(x, Tier))

zz_rep_16_op5_hyd = inner_join(zz_rep_16_op4_hyd,zz_rep_16_op5_hyd , by="Tier") 

###
###

zz_rep_16_op5_del_1 <- zz_rep_16_op5_del
colnames(zz_rep_16_op5_del_1)[3] <- "Metric"
zz_rep_16_op5_del_1 <- zz_rep_16_op5_del_1[-4, ]
zz_rep_16_op5_del_1$Metric = ifelse((zz_rep_16_op5_del_1$Metric == "0" ),"D0", zz_rep_16_op5_del_1$Metric)
zz_rep_16_op5_del_1$Metric = ifelse((zz_rep_16_op5_del_1$Metric == "1" ),"D1", zz_rep_16_op5_del_1$Metric)
zz_rep_16_op5_del_1$Metric = ifelse((zz_rep_16_op5_del_1$Metric == "2" ),"D2", zz_rep_16_op5_del_1$Metric)
zz_rep_16_op5_del_1$Metric = ifelse((zz_rep_16_op5_del_1$Metric == "3" ),"D3", zz_rep_16_op5_del_1$Metric)
zz_rep_16_op5_del_1 <- zz_rep_16_op5_del_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_del_1$Max[i] <- max(zz_rep_16_op5_del_1[i,4:10])
  zz_rep_16_op5_del_1$Min[i] <- min(zz_rep_16_op5_del_1[i,4:10])
  zz_rep_16_op5_del_1$Target[i] <- max(zz_rep_16_op5_del_1[ ,4:10])
}


zz_rep_16_op5_bom_1 <- zz_rep_16_op5_bom
colnames(zz_rep_16_op5_bom_1)[3] <- "Metric"
zz_rep_16_op5_bom_1 <- zz_rep_16_op5_bom_1[-4, ]
zz_rep_16_op5_bom_1$Metric = ifelse((zz_rep_16_op5_bom_1$Metric == "0" ),"D0", zz_rep_16_op5_bom_1$Metric)
zz_rep_16_op5_bom_1$Metric = ifelse((zz_rep_16_op5_bom_1$Metric == "1" ),"D1", zz_rep_16_op5_bom_1$Metric)
zz_rep_16_op5_bom_1$Metric = ifelse((zz_rep_16_op5_bom_1$Metric == "2" ),"D2", zz_rep_16_op5_bom_1$Metric)
zz_rep_16_op5_bom_1$Metric = ifelse((zz_rep_16_op5_bom_1$Metric == "3" ),"D3", zz_rep_16_op5_bom_1$Metric)
zz_rep_16_op5_bom_1 <- zz_rep_16_op5_bom_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_bom_1$Max[i] <- max(zz_rep_16_op5_bom_1[i,4:10])
  zz_rep_16_op5_bom_1$Min[i] <- min(zz_rep_16_op5_bom_1[i,4:10])
  zz_rep_16_op5_bom_1$Target[i] <- max(zz_rep_16_op5_bom_1[ ,4:10])
}


zz_rep_16_op5_blr_1 <- zz_rep_16_op5_blr
colnames(zz_rep_16_op5_blr_1)[3] <- "Metric"
zz_rep_16_op5_blr_1 <- zz_rep_16_op5_blr_1[-4, ]
zz_rep_16_op5_blr_1$Metric = ifelse((zz_rep_16_op5_blr_1$Metric == "0" ),"D0", zz_rep_16_op5_blr_1$Metric)
zz_rep_16_op5_blr_1$Metric = ifelse((zz_rep_16_op5_blr_1$Metric == "1" ),"D1", zz_rep_16_op5_blr_1$Metric)
zz_rep_16_op5_blr_1$Metric = ifelse((zz_rep_16_op5_blr_1$Metric == "2" ),"D2", zz_rep_16_op5_blr_1$Metric)
zz_rep_16_op5_blr_1$Metric = ifelse((zz_rep_16_op5_blr_1$Metric == "3" ),"D3", zz_rep_16_op5_blr_1$Metric)
zz_rep_16_op5_blr_1 <- zz_rep_16_op5_blr_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_blr_1$Max[i] <- max(zz_rep_16_op5_blr_1[i,4:10])
  zz_rep_16_op5_blr_1$Min[i] <- min(zz_rep_16_op5_blr_1[i,4:10])
  zz_rep_16_op5_blr_1$Target[i] <- max(zz_rep_16_op5_blr_1[ ,4:10])
}

zz_rep_16_op5_ccu_1 <- zz_rep_16_op5_ccu
colnames(zz_rep_16_op5_ccu_1)[3] <- "Metric"
zz_rep_16_op5_ccu_1 <- zz_rep_16_op5_ccu_1[-4, ]
zz_rep_16_op5_ccu_1$Metric = ifelse((zz_rep_16_op5_ccu_1$Metric == "0" ),"D0", zz_rep_16_op5_ccu_1$Metric)
zz_rep_16_op5_ccu_1$Metric = ifelse((zz_rep_16_op5_ccu_1$Metric == "1" ),"D1", zz_rep_16_op5_ccu_1$Metric)
zz_rep_16_op5_ccu_1$Metric = ifelse((zz_rep_16_op5_ccu_1$Metric == "2" ),"D2", zz_rep_16_op5_ccu_1$Metric)
zz_rep_16_op5_ccu_1$Metric = ifelse((zz_rep_16_op5_ccu_1$Metric == "3" ),"D3", zz_rep_16_op5_ccu_1$Metric)
zz_rep_16_op5_ccu_1 <- zz_rep_16_op5_ccu_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_ccu_1$Max[i] <- max(zz_rep_16_op5_ccu_1[i,4:10])
  zz_rep_16_op5_ccu_1$Min[i] <- min(zz_rep_16_op5_ccu_1[i,4:10])
  zz_rep_16_op5_ccu_1$Target[i] <- max(zz_rep_16_op5_ccu_1[ ,4:10])
}


zz_rep_16_op5_jai_1 <- zz_rep_16_op5_jai
colnames(zz_rep_16_op5_jai_1)[3] <- "Metric"
zz_rep_16_op5_jai_1 <- zz_rep_16_op5_jai_1[-4, ]
zz_rep_16_op5_jai_1$Metric = ifelse((zz_rep_16_op5_jai_1$Metric == "0" ),"D0", zz_rep_16_op5_jai_1$Metric)
zz_rep_16_op5_jai_1$Metric = ifelse((zz_rep_16_op5_jai_1$Metric == "1" ),"D1", zz_rep_16_op5_jai_1$Metric)
zz_rep_16_op5_jai_1$Metric = ifelse((zz_rep_16_op5_jai_1$Metric == "2" ),"D2", zz_rep_16_op5_jai_1$Metric)
zz_rep_16_op5_jai_1$Metric = ifelse((zz_rep_16_op5_jai_1$Metric == "3" ),"D3", zz_rep_16_op5_jai_1$Metric)
zz_rep_16_op5_jai_1 <- zz_rep_16_op5_jai_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_jai_1$Max[i] <- max(zz_rep_16_op5_jai_1[i,4:10])
  zz_rep_16_op5_jai_1$Min[i] <- min(zz_rep_16_op5_jai_1[i,4:10])
  zz_rep_16_op5_jai_1$Target[i] <- max(zz_rep_16_op5_jai_1[ ,4:10])
}


zz_rep_16_op5_stv_1 <- zz_rep_16_op5_stv
colnames(zz_rep_16_op5_stv_1)[3] <- "Metric"
zz_rep_16_op5_stv_1 <- zz_rep_16_op5_stv_1[-4, ]
zz_rep_16_op5_stv_1$Metric = ifelse((zz_rep_16_op5_stv_1$Metric == "0" ),"D0", zz_rep_16_op5_stv_1$Metric)
zz_rep_16_op5_stv_1$Metric = ifelse((zz_rep_16_op5_stv_1$Metric == "1" ),"D1", zz_rep_16_op5_stv_1$Metric)
zz_rep_16_op5_stv_1$Metric = ifelse((zz_rep_16_op5_stv_1$Metric == "2" ),"D2", zz_rep_16_op5_stv_1$Metric)
zz_rep_16_op5_stv_1$Metric = ifelse((zz_rep_16_op5_stv_1$Metric == "3" ),"D3", zz_rep_16_op5_stv_1$Metric)
zz_rep_16_op5_stv_1 <- zz_rep_16_op5_stv_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_stv_1$Max[i] <- max(zz_rep_16_op5_stv_1[i,4:10])
  zz_rep_16_op5_stv_1$Min[i] <- min(zz_rep_16_op5_stv_1[i,4:10])
  zz_rep_16_op5_stv_1$Target[i] <- max(zz_rep_16_op5_stv_1[ ,4:10])
}

zz_rep_16_op5_hyd_1 <- zz_rep_16_op5_hyd
colnames(zz_rep_16_op5_hyd_1)[3] <- "Metric"
zz_rep_16_op5_hyd_1 <- zz_rep_16_op5_hyd_1[-4, ]
zz_rep_16_op5_hyd_1$Metric = ifelse((zz_rep_16_op5_hyd_1$Metric == "0" ),"D0", zz_rep_16_op5_hyd_1$Metric)
zz_rep_16_op5_hyd_1$Metric = ifelse((zz_rep_16_op5_hyd_1$Metric == "1" ),"D1", zz_rep_16_op5_hyd_1$Metric)
zz_rep_16_op5_hyd_1$Metric = ifelse((zz_rep_16_op5_hyd_1$Metric == "2" ),"D2", zz_rep_16_op5_hyd_1$Metric)
zz_rep_16_op5_hyd_1$Metric = ifelse((zz_rep_16_op5_hyd_1$Metric == "3" ),"D3", zz_rep_16_op5_hyd_1$Metric)
zz_rep_16_op5_hyd_1 <- zz_rep_16_op5_hyd_1[-4]
for(i in 1:15)
{
  zz_rep_16_op5_hyd_1$Max[i] <- max(zz_rep_16_op5_hyd_1[i,4:10])
  zz_rep_16_op5_hyd_1$Min[i] <- min(zz_rep_16_op5_hyd_1[i,4:10])
  zz_rep_16_op5_hyd_1$Target[i] <- max(zz_rep_16_op5_hyd_1[ ,4:10])
}

######################################### Slide 23 ##################################
# Title slide


######################################### Slide 24-25 R Code ##################################
zz_rep_24_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.cnc %in% c("Delhi NCR" , "Bangalore" , "Hyderabad" , "Jaipur"
                         ,"Chennai"  , "Pune","Kolkata" , "Mumbai" , "Surat" , "Ahmedabad"))%>%
  filter(X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )

zz_rep_24_op1$wkend_dt = as.character(zz_rep_24_op1$wkend_dt)

zz_rep_24_op1$wkend_dt = as.POSIXct(zz_rep_24_op1$wkend_dt , format="%j")

zz_rep_24_op2 = zz_rep_24_op1 %>%
  group_by(City = X_id.cnc , wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")


zz_rep_24_op3 = zz_rep_24_op2 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(City~wkend_dt  ,value.var="pct")


zz_rep_24_op2 = zz_rep_24_op2 %>%
  group_by(City)%>%
  summarise(sum=sum(sum))%>%
  arrange(desc(sum))

zz_rep_24_op4 = inner_join(zz_rep_24_op2 , zz_rep_24_op3 , by="City")

######################################################
zz_rep_24_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.cnc %in% c("Delhi NCR" , "Bangalore" , "Hyderabad" , "Jaipur"
                         ,"Chennai"  , "Pune","Kolkata" , "Mumbai" , "Surat" , "Ahmedabad"))%>%
  filter(X_id.dl_date>=slide_3_min_mon , X_id.dl_pt %in% c("COD")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )

zz_rep_24_op1$wkend_dt = as.character(zz_rep_24_op1$wkend_dt)

zz_rep_24_op1$wkend_dt = as.POSIXct(zz_rep_24_op1$wkend_dt , format="%j")

zz_rep_24_op2 = zz_rep_24_op1 %>%
  group_by(City = X_id.cnc , wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")


zz_rep_24_op3 = zz_rep_24_op2 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(City~wkend_dt  ,value.var="pct")


zz_rep_24_op2 = zz_rep_24_op2 %>%
  group_by(City)%>%
  summarise(sum=sum(sum))%>%
  arrange(desc(sum))

zz_rep_24_op4_cod = inner_join(zz_rep_24_op2 , zz_rep_24_op3 , by="City")


zz_rep_24_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.cnc %in% c("Delhi NCR" , "Bangalore" , "Hyderabad" , "Jaipur"
                         ,"Chennai"  , "Pune","Kolkata" , "Mumbai" , "Surat" , "Ahmedabad"))%>%
  filter(X_id.dl_date>=slide_3_min_mon , X_id.dl_pt %in% c("COD")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )

zz_rep_24_op1$wkend_dt = as.character(zz_rep_24_op1$wkend_dt)

zz_rep_24_op1$wkend_dt = as.POSIXct(zz_rep_24_op1$wkend_dt , format="%j")

zz_rep_24_op2 = zz_rep_24_op1 %>%
  group_by(City = X_id.cnc , wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")

zz_rep_24_op3 = zz_rep_24_op2 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(City~wkend_dt  ,value.var="pct")

zz_rep_24_op2 = zz_rep_24_op2 %>%
  group_by(City)%>%
  summarise(sum=sum(sum))%>%
  arrange(desc(sum))

zz_rep_24_op4_cod = inner_join(zz_rep_24_op2 , zz_rep_24_op3 , by="City")

###
###
zz_rep_24_op4_1 <- zz_rep_24_op4
colnames(zz_rep_24_op4_1)[2] <- "Avg Volume"
zz_rep_24_op4_1 <- zz_rep_24_op4_1[-3]

zz_rep_24_op4_cod_1 <- zz_rep_24_op4_cod
colnames(zz_rep_24_op4_cod_1)[2] <- "Avg Volume"
zz_rep_24_op4_cod_1 <- zz_rep_24_op4_cod_1[-3]

######################################### Slide 26 R Code ##################################
# Title slide

######################################### Slide 27-29 R Code ###############################
zz_rep_11_op1_del = zz_rep_11_ivd_minus_pd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid"),
         X_id.occ=="Delhi NCR"
         
  ) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_op1_del$wkend_dt = as.character(zz_rep_11_op1_del$wkend_dt)

zz_rep_11_op1_del$wkend_dt = as.POSIXct(zz_rep_11_op1_del$wkend_dt , format="%j")

zz_rep_11_op2_del = zz_rep_11_op1_del%>%
  group_by(wkend_dt,X_id.deltaHr)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))

zz_rep_11_op3_del = zz_rep_11_op2_del %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")

zz_rep_11_2_op1_del = zz_rep_11_fbd_minus_ivd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid"),
         X_id.occ=="Delhi NCR") %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_2_op1_del$wkend_dt = as.character(zz_rep_11_2_op1_del$wkend_dt)

zz_rep_11_2_op1_del$wkend_dt = as.POSIXct(zz_rep_11_2_op1_del$wkend_dt , format="%j")

zz_rep_11_2_op2_del = zz_rep_11_2_op1_del%>%
  group_by(wkend_dt , X_id.deltaHr   )%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))


zz_rep_11_2_op3_del = zz_rep_11_2_op2_del %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")
###
###
panel_use_m_1 <- panel_use_m

zz_rep_11_op3_del_1 <- zz_rep_11_op3_del
colnames(zz_rep_11_op3_del_1)[1] <- "Metric"
panel_use_m_1 <- rbind.fill(panel_use_m_1, zz_rep_11_op3_del_1)

panel_use_m_1$Metric = ifelse((panel_use_m_1$Metric == "<2"),"D<2 hr",panel_use_m_1$Metric)
panel_use_m_1$Metric = ifelse((panel_use_m_1$Metric == "3"),"D<4 hr",panel_use_m_1$Metric)
panel_use_m_1$Metric = ifelse((panel_use_m_1$Metric == "4"),"D<8 hr",panel_use_m_1$Metric)
panel_use_m_1$Metric = ifelse((panel_use_m_1$Metric == "1"),"Panel usage %",panel_use_m_1$Metric)

panel_use_m_1 <- panel_use_m_1[-5, ]
Panel_use_m_1 <- panel_use_m_1[-2:-9]

zz_rep_11_2_op3_del_1 <- zz_rep_11_2_op3_del
zz_rep_11_2_op3_del_1 <- zz_rep_11_2_op3_del_1[-2]
colnames(zz_rep_11_2_op3_del_1)[1] <- "Metric"
Panel_use_m_1 <- rbind.fill(Panel_use_m_1, zz_rep_11_2_op3_del_1)
for(i in 5:8)
{
  Panel_use_m_1$Metric = ifelse((Panel_use_m_1$Metric == "<2"),"D<2 hr",Panel_use_m_1$Metric)
  Panel_use_m_1$Metric = ifelse((Panel_use_m_1$Metric == "<4"),"D<4 hr",Panel_use_m_1$Metric)
  Panel_use_m_1$Metric = ifelse((Panel_use_m_1$Metric == "<8"),"D<8 hr",Panel_use_m_1$Metric)
}
Panel_use_m_1 <- Panel_use_m_1[-8, ]
Cost1_m_1 <- Cost1_m
Panel_use_m_1 <- rbind.fill(Panel_use_m_1, Cost1_m_1)

Panel_use_m_1$Dimension <- Panel_use_m_1$Metric
Panel_use_m_1$Dimension <- Panel_use_m_1$Metric
Panel_use_m_0 <- Panel_use_m_1[ , c("Dimension", "Metric")]
Panel_use_m_1 <- left_join(Panel_use_m_0, Panel_use_m_1, by = "Metric", copy = FALSE)
Panel_use_m_1 <- Panel_use_m_1[-3, ]
Panel_use_m_1 <- Panel_use_m_1[-4, ]
Panel_use_m_1 <- Panel_use_m_1[-5, ]
Panel_use_m_1 <- Panel_use_m_1[-5, ]
Panel_use_m_1 <- Panel_use_m_1[-6, ]
Panel_use_m_1 <- Panel_use_m_1[-7, ]
Panel_use_m_1 <- Panel_use_m_1[-10 ]
rownames(Panel_use_m_1) <- NULL
colnames(Panel_use_m_1)[1] <- "Dimensions"

Panel_use_m_1$Dimensions = ifelse((Panel_use_m_1$Dimensions == "Panel usage %"),"First Mile",Panel_use_m_1$Dimensions)
Panel_use_m_1$Dimensions = ifelse((Panel_use_m_1$Dimensions == "D<2 hr" | Panel_use_m_1$Dimensions == "D<4 hr" | Panel_use_m_1$Dimensions == "D<8 hr"),"Processing",Panel_use_m_1$Dimensions)
Panel_use_m_1$Dimensions = ifelse((Panel_use_m_1$Dimensions == "D<2 hr" | Panel_use_m_1$Dimensions == "D<4 hr" | Panel_use_m_1$Dimensions == "D<8 hr"),"Bagging",Panel_use_m_1$Dimensions)
Panel_use_m_1$Dimensions = ifelse((Panel_use_m_1$Dimensions == "Man-days " | Panel_use_m_1$Dimensions == "# of bikers " | Panel_use_m_1$Dimensions == "# of vans "| Panel_use_m_1$Dimensions == "Processing cost/shipment "),"Cost",Panel_use_m_1$Dimensions)
Panel_use_m_1[,sapply(Panel_use_m_1, is.numeric)] <-round(Panel_use_m_1[,sapply(Panel_use_m_1, is.numeric)],2)
##############Bombay###############
zz_rep_11_op1_bom = zz_rep_11_ivd_minus_pd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid"),
         X_id.occ=="Mumbai"
         
  ) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_op1_bom$wkend_dt = as.character(zz_rep_11_op1_bom$wkend_dt)

zz_rep_11_op1_bom$wkend_dt = as.POSIXct(zz_rep_11_op1_bom$wkend_dt , format="%j")

zz_rep_11_op2_bom = zz_rep_11_op1_bom%>%
  group_by(wkend_dt,X_id.deltaHr)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))

zz_rep_11_op3_bom = zz_rep_11_op2_bom %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")

zz_rep_11_2_op1_bom = zz_rep_11_fbd_minus_ivd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid"),
         X_id.occ=="Mumbai") %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_2_op1_bom$wkend_dt = as.character(zz_rep_11_2_op1_bom$wkend_dt)

zz_rep_11_2_op1_bom$wkend_dt = as.POSIXct(zz_rep_11_2_op1_bom$wkend_dt , format="%j")

zz_rep_11_2_op2_bom = zz_rep_11_2_op1_bom%>%
  group_by(wkend_dt , X_id.deltaHr   )%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))


zz_rep_11_2_op3_bom = zz_rep_11_2_op2_bom %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")
###
###
panel_use_mm_1 <- panel_use_m

zz_rep_11_op3_bom_1 <- zz_rep_11_op3_bom
colnames(zz_rep_11_op3_bom_1)[1] <- "Metric"
panel_use_mm_1 <- rbind.fill(panel_use_mm_1, zz_rep_11_op3_bom_1)

panel_use_mm_1$Metric = ifelse((panel_use_mm_1$Metric == "<2"),"D<2 hr",panel_use_mm_1$Metric)
panel_use_mm_1$Metric = ifelse((panel_use_mm_1$Metric == "3"),"D<4 hr",panel_use_mm_1$Metric)
panel_use_mm_1$Metric = ifelse((panel_use_mm_1$Metric == "4"),"D<8 hr",panel_use_mm_1$Metric)
panel_use_mm_1$Metric = ifelse((panel_use_mm_1$Metric == "1"),"Panel usage %",panel_use_mm_1$Metric)

panel_use_mm_1 <- panel_use_mm_1[-5, ]
Panel_use_mm_1 <- panel_use_mm_1[-2:-9]

zz_rep_11_2_op3_bom_1 <- zz_rep_11_2_op3_bom
zz_rep_11_2_op3_bom_1 <- zz_rep_11_2_op3_bom_1[-2]
colnames(zz_rep_11_2_op3_bom_1)[1] <- "Metric"
Panel_use_mm_1 <- rbind.fill(Panel_use_mm_1, zz_rep_11_2_op3_bom_1)
for(i in 5:8)
{
  Panel_use_mm_1$Metric = ifelse((Panel_use_mm_1$Metric == "<2"),"D<2 hr",Panel_use_mm_1$Metric)
  Panel_use_mm_1$Metric = ifelse((Panel_use_mm_1$Metric == "<4"),"D<4 hr",Panel_use_mm_1$Metric)
  Panel_use_mm_1$Metric = ifelse((Panel_use_mm_1$Metric == "<8"),"D<8 hr",Panel_use_mm_1$Metric)
}
Panel_use_mm_1 <- Panel_use_mm_1[-8, ]
Cost1_m_1 <- Cost1_m
Panel_use_mm_1 <- rbind.fill(Panel_use_mm_1, Cost1_m_1)

Panel_use_mm_1$Dimension <- Panel_use_mm_1$Metric
Panel_use_mm_1$Dimension <- Panel_use_mm_1$Metric
Panel_use_m_0 <- Panel_use_mm_1[ , c("Dimension", "Metric")]
Panel_use_mm_1 <- left_join(Panel_use_m_0, Panel_use_mm_1, by = "Metric", copy = FALSE)
Panel_use_mm_1 <- Panel_use_mm_1[-3, ]
Panel_use_mm_1 <- Panel_use_mm_1[-4, ]
Panel_use_mm_1 <- Panel_use_mm_1[-5, ]
Panel_use_mm_1 <- Panel_use_mm_1[-5, ]
Panel_use_mm_1 <- Panel_use_mm_1[-6, ]
Panel_use_mm_1 <- Panel_use_mm_1[-7, ]
Panel_use_mm_1 <- Panel_use_mm_1[-10 ]
rownames(Panel_use_mm_1) <- NULL
colnames(Panel_use_mm_1)[1] <- "Dimensions"

Panel_use_mm_1$Dimensions = ifelse((Panel_use_mm_1$Dimensions == "Panel usage %"),"First Mile",Panel_use_mm_1$Dimensions)
Panel_use_mm_1$Dimensions = ifelse((Panel_use_mm_1$Dimensions == "D<2 hr" | Panel_use_mm_1$Dimensions == "D<4 hr" | Panel_use_mm_1$Dimensions == "D<8 hr"),"Processing",Panel_use_mm_1$Dimensions)
Panel_use_mm_1$Dimensions = ifelse((Panel_use_mm_1$Dimensions == "D<2 hr" | Panel_use_mm_1$Dimensions == "D<4 hr" | Panel_use_mm_1$Dimensions == "D<8 hr"),"Bagging",Panel_use_mm_1$Dimensions)
Panel_use_mm_1$Dimensions = ifelse((Panel_use_mm_1$Dimensions == "Man-days " | Panel_use_mm_1$Dimensions == "# of bikers " | Panel_use_mm_1$Dimensions == "# of vans "| Panel_use_mm_1$Dimensions == "Processing cost/shipment "),"Cost",Panel_use_mm_1$Dimensions)
Panel_use_mm_1[,sapply(Panel_use_mm_1, is.numeric)] <-round(Panel_use_mm_1[,sapply(Panel_use_mm_1, is.numeric)],2)
###############Bangalore#####################
zz_rep_11_op1_blr = zz_rep_11_ivd_minus_pd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid"),
         X_id.occ=="Bangalore"
         
  ) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_op1_blr$wkend_dt = as.character(zz_rep_11_op1_blr$wkend_dt)

zz_rep_11_op1_blr$wkend_dt = as.POSIXct(zz_rep_11_op1_blr$wkend_dt , format="%j")

zz_rep_11_op2_blr = zz_rep_11_op1_blr%>%
  group_by(wkend_dt,X_id.deltaHr)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))

zz_rep_11_op3_blr = zz_rep_11_op2_blr %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")

zz_rep_11_2_op1_blr = zz_rep_11_fbd_minus_ivd %>%
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.pt %in% c("COD" , "Pre-paid"),
         X_id.occ=="Bangalore") %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rep_11_2_op1_blr$wkend_dt = as.character(zz_rep_11_2_op1_blr$wkend_dt)

zz_rep_11_2_op1_blr$wkend_dt = as.POSIXct(zz_rep_11_2_op1_blr$wkend_dt , format="%j")

zz_rep_11_2_op2_blr = zz_rep_11_2_op1_blr%>%
  group_by(wkend_dt , X_id.deltaHr   )%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct=100*sum/sum(sum))%>%
  mutate(cumsum = ifelse( X_id.deltaHr==">8" ,pct ,        
                          cumsum(pct)))


zz_rep_11_2_op3_blr = zz_rep_11_2_op2_blr %>%
  select(wkend_dt,X_id.deltaHr,cumsum)%>%
  dcast(X_id.deltaHr ~wkend_dt  ,value.var="cumsum")
###
###
panel_use_mmm_1 <- panel_use_m

zz_rep_11_op3_blr_1 <- zz_rep_11_op3_blr
colnames(zz_rep_11_op3_blr_1)[1] <- "Metric"
panel_use_mmm_1 <- rbind.fill(panel_use_mmm_1, zz_rep_11_op3_blr_1)

panel_use_mmm_1$Metric = ifelse((panel_use_mmm_1$Metric == "<2"),"D<2 hr",panel_use_mmm_1$Metric)
panel_use_mmm_1$Metric = ifelse((panel_use_mmm_1$Metric == "3"),"D<4 hr",panel_use_mmm_1$Metric)
panel_use_mmm_1$Metric = ifelse((panel_use_mmm_1$Metric == "4"),"D<8 hr",panel_use_mmm_1$Metric)
panel_use_mmm_1$Metric = ifelse((panel_use_mmm_1$Metric == "1"),"Panel usage %",panel_use_mmm_1$Metric)

panel_use_mmm_1 <- panel_use_mmm_1[-5, ]
Panel_use_mmm_1 <- panel_use_mmm_1[-2:-9]

zz_rep_11_2_op3_blr_1 <- zz_rep_11_2_op3_blr
zz_rep_11_2_op3_blr_1 <- zz_rep_11_2_op3_blr_1[-2]
colnames(zz_rep_11_2_op3_blr_1)[1] <- "Metric"
Panel_use_mmm_1 <- rbind.fill(Panel_use_mmm_1, zz_rep_11_2_op3_blr_1)
for(i in 5:8)
{
  Panel_use_mmm_1$Metric = ifelse((Panel_use_mmm_1$Metric == "<2"),"D<2 hr",Panel_use_mmm_1$Metric)
  Panel_use_mmm_1$Metric = ifelse((Panel_use_mmm_1$Metric == "<4"),"D<4 hr",Panel_use_mmm_1$Metric)
  Panel_use_mmm_1$Metric = ifelse((Panel_use_mmm_1$Metric == "<8"),"D<8 hr",Panel_use_mmm_1$Metric)
}
Panel_use_mmm_1 <- Panel_use_mmm_1[-8, ]
Cost1_m_1 <- Cost1_m
Panel_use_mmm_1 <- rbind.fill(Panel_use_mmm_1, Cost1_m_1)

Panel_use_mmm_1$Dimension <- Panel_use_mmm_1$Metric
Panel_use_mmm_1$Dimension <- Panel_use_mmm_1$Metric
Panel_use_m_0 <- Panel_use_mmm_1[ , c("Dimension", "Metric")]
Panel_use_mmm_1 <- left_join(Panel_use_m_0, Panel_use_mmm_1, by = "Metric", copy = FALSE)
Panel_use_mmm_1 <- Panel_use_mmm_1[-3, ]
Panel_use_mmm_1 <- Panel_use_mmm_1[-4, ]
Panel_use_mmm_1 <- Panel_use_mmm_1[-5, ]
Panel_use_mmm_1 <- Panel_use_mmm_1[-5, ]
Panel_use_mmm_1 <- Panel_use_mmm_1[-6, ]
Panel_use_mmm_1 <- Panel_use_mmm_1[-7, ]
Panel_use_mmm_1 <- Panel_use_mmm_1[-10 ]
rownames(Panel_use_mmm_1) <- NULL
colnames(Panel_use_mmm_1)[1] <- "Dimensions"

Panel_use_mmm_1$Dimensions = ifelse((Panel_use_mmm_1$Dimensions == "Panel usage %"),"First Mile",Panel_use_mmm_1$Dimensions)
Panel_use_mmm_1$Dimensions = ifelse((Panel_use_mmm_1$Dimensions == "D<2 hr" | Panel_use_mmm_1$Dimensions == "D<4 hr" | Panel_use_mmm_1$Dimensions == "D<8 hr"),"Processing",Panel_use_mmm_1$Dimensions)
Panel_use_mmm_1$Dimensions = ifelse((Panel_use_mmm_1$Dimensions == "D<2 hr" | Panel_use_mmm_1$Dimensions == "D<4 hr" | Panel_use_mmm_1$Dimensions == "D<8 hr"),"Bagging",Panel_use_mmm_1$Dimensions)
Panel_use_mmm_1$Dimensions = ifelse((Panel_use_mmm_1$Dimensions == "Man-days " | Panel_use_mmm_1$Dimensions == "# of bikers " | Panel_use_mmm_1$Dimensions == "# of vans "| Panel_use_mmm_1$Dimensions == "Processing cost/shipment "),"Cost",Panel_use_mmm_1$Dimensions)
Panel_use_mmm_1[,sapply(Panel_use_mmm_1, is.numeric)] <-round(Panel_use_mmm_1[,sapply(Panel_use_mmm_1, is.numeric)],2)

######################################### Slide 30 R Code ##################################

######################################### Slide 31 R Code ##################################
#mannual

######################################### Slide 32 R Code ##################################
cl_zn_rep_10_pd_dl1_1 = cl_zn_rep_10_pd%>%
  filter(X_id.cl %in% c("Flipkart"))%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_dl1_2 = cl_zn_rep_10_pd_dl1_1%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_dl1_2$wkend_dt = as.character(cl_zn_rep_10_pd_dl1_2$wkend_dt)

cl_zn_rep_10_pd_dl1_2$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_dl1_2$wkend_dt , format="%j")


cl_zn_rep_10_pd_dl1_3 = cl_zn_rep_10_pd_dl1_2%>%
  group_by(wkend_dt , X_id.fddMinusPd)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct = sum*100/sum(sum))%>%
  mutate(cumsum = cumsum(pct))%>%
  filter(X_id.fddMinusPd<=3)

cl_zn_rep_10_pd_dl1_3 = cl_zn_rep_10_pd_dl1_3%>%
  dcast(X_id.fddMinusPd~wkend_dt,value.var="cumsum")%>%
  dplyr::rename(Speed = X_id.fddMinusPd )
cl_zn_rep_10_pd_dl1_3[,sapply(cl_zn_rep_10_pd_dl1_3, is.numeric)] <-round(cl_zn_rep_10_pd_dl1_3[,sapply(cl_zn_rep_10_pd_dl1_3, is.numeric)],2)
###############Client Wise Return Rate and Delivery Efficieny#########
########FLIPKART

cl_rr_1_1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.cl %in% c("Flipkart"),
         X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )


cl_rr_1_1$wkend_dt = as.character(cl_rr_1_1$wkend_dt)

cl_rr_1_1$wkend_dt = as.POSIXct(cl_rr_1_1$wkend_dt , format="%j")

cl_rr_1_2 = cl_rr_1_1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")

cl_rr_1_3 = cl_rr_1_2 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")
################ DElivered %age######################

cl_rr_1_1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon ,  X_id.cl %in% c("Flipkart"),
         X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss=="Delivered" , "Delivered" , "Other")
  )


cl_rr_1_1$wkend_dt = as.character(cl_rr_1_1$wkend_dt)

cl_rr_1_1$wkend_dt = as.POSIXct(cl_rr_1_1$wkend_dt , format="%j")

cl_rr_1_22 = cl_rr_1_1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="Delivered")

cl_rr_1_24 = cl_rr_1_22 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")
#######FLipkart
cl_zn_rep_10_pd_cl11 = cl_zn_rep_10_pd%>%
  filter(X_id.zn=="A" , X_id.cl %in% c("Flipkart") )%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_cl11 = cl_zn_rep_10_pd_cl11%>%
  filter(pd_hr<8)%>%  
  mutate(sdd_flag = ifelse(X_id.fddMinusPd==0,1,0
                           
                           
  ))

cl_zn_rep_10_pd_cl11 = cl_zn_rep_10_pd_cl11%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_cl11$wkend_dt = as.character(cl_zn_rep_10_pd_cl11$wkend_dt)

cl_zn_rep_10_pd_cl11$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_cl11$wkend_dt , format="%j")

cl_zn_rep_10_pd_cl12 = cl_zn_rep_10_pd_cl11%>%
  group_by( wkend_dt , sdd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_cl13 = cl_zn_rep_10_pd_cl12%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(sdd_flag~wkend_dt  ,value.var="pct")%>%
  filter(sdd_flag==0)
################################3

cl_zn_rep_10_pd_cl11 = cl_zn_rep_10_pd%>%
  filter(X_id.zn %in% c("B" , "C") ,  X_id.cl %in% c("Flipkart"))%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_cl11 = cl_zn_rep_10_pd_cl11%>%
  filter(pd_hr<16)%>%
  mutate(ndd_flag = ifelse(X_id.fddMinusPd<2,1,0
  ))



cl_zn_rep_10_pd_cl11 = cl_zn_rep_10_pd_cl11%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_cl11$wkend_dt = as.character(cl_zn_rep_10_pd_cl11$wkend_dt)

cl_zn_rep_10_pd_cl11$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_cl11$wkend_dt , format="%j")

cl_zn_rep_10_pd_cl12 = cl_zn_rep_10_pd_cl11%>%
  group_by( wkend_dt , ndd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_cl113 = cl_zn_rep_10_pd_cl12%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(ndd_flag~wkend_dt  ,value.var="pct")%>%
  filter(ndd_flag==0)

###########Flipkart RTO Closure Breach, RTO Cycle(days) #############

zz_rd_rto_pd_op1 = zz_rd_rto_pd%>%
  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rd_rto_pd_op1$wkend_dt = as.character(zz_rd_rto_pd_op1$wkend_dt)

zz_rd_rto_pd_op1$wkend_dt= as.POSIXct(zz_rd_rto_pd_op1$wkend_dt , format="%j")


zz_rd_rto_pd_op2_fp=zz_rd_rto_pd_op1%>%
  filter(X_id.cl %in% c("Flipkart"))%>%
mutate(rto_flag = ifelse(X_id.sd_day-X_id.rd_day>15,1,0))%>%
  group_by(wkend_dt , rto_flag)%>%
  summarise(sum=sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  dcast(rto_flag~wkend_dt,value.var="pct") %>%
  filter(rto_flag==1)
zz_rd_rto_pd_op2_fp[,sapply(zz_rd_rto_pd_op2_fp, is.numeric)] <-round(zz_rd_rto_pd_op2_fp[,sapply(zz_rd_rto_pd_op2_fp, is.numeric)],2)

zz_rd_rto_pd_op3_fp=zz_rd_rto_pd_op1%>%
  filter(X_id.cl %in% c("Flipkart"))%>%
  
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)

zz_rd_rto_pd_op3=zz_rd_rto_pd_op1%>%
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)


zz_rd_rto_pd_op4_fp=zz_rd_rto_pd_op3%>%
  group_by(wkend_dt )%>%
  summarise(sum=sum(nx)/sum(n))%>%
  dcast(.~wkend_dt,value.var="sum")
zz_rd_rto_pd_op4_fp[,sapply(zz_rd_rto_pd_op4_fp, is.numeric)] <-round(zz_rd_rto_pd_op4_fp[,sapply(zz_rd_rto_pd_op4_fp, is.numeric)],2)
#########################Flipkart Customer Returns #########################

cust_ret_op1 = cl_zn_rep_10_pd%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))  %>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cust_ret_op1$wkend_dt = as.character(cust_ret_op1$wkend_dt)

cust_ret_op1$wkend_dt= as.POSIXct(cust_ret_op1$wkend_dt , format="%j")

cust_ret_op2 = cust_ret_op1%>%
  filter(X_id.pt=="Pickup",
         X_id.cl %in% c("Flipkart"))%>%
  mutate(day_diff = ifelse(X_id.fddMinusPd>2,3,X_id.fddMinusPd))%>%
  group_by(wkend_dt , day_diff)%>%
  summarise(sum= sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  mutate(cum_sum=cumsum(pct))%>%
  filter(day_diff<3)


cust_ret_op3_fp = cust_ret_op2%>%
  dcast(day_diff~wkend_dt , value.var="cum_sum")
cust_ret_op3_fp[,sapply(cust_ret_op3_fp, is.numeric)] <-round(cust_ret_op3_fp[,sapply(cust_ret_op3_fp, is.numeric)],2)

######## Flipkart Closure Breach %, Loss Rate % ##########################
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

clsr_brch_op1 = loss_rate_op1%>%
  mutate(Del_diff=X_id.fdd_day-X_id.pd_day)%>%
  mutate(Breach_flag = ifelse(X_id.zn=="A" & Del_diff>1,1,
                              ifelse(X_id.zn=="B" & Del_diff>2 , 1,
                                     ifelse(X_id.zn=="C" & Del_diff>2 , 1,
                                            ifelse(X_id.zn=="D" & Del_diff>3 , 1,
                                                   ifelse(X_id.zn=="E" & Del_diff>3 , 1,0
                                                          
                                                   ))))))
clsr_brch_op1_fp=clsr_brch_op1%>%
  filter(X_id.cl %in% c("Flipkart"))

clsr_brch_op2 = clsr_brch_op1_fp%>%
  group_by(wkend_dt)%>%
  summarise(sum_total=sum(dl_count))


clsr_brch_op3 = clsr_brch_op1_fp%>%
  filter(Breach_flag==1)%>%
  group_by(wkend_dt)%>%
  summarise(sum_breach=sum(dl_count))

##clsr_brch_op3
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5_fp=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)
##clsr_brch_op3
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)%>%
  dcast(.~wkend_dt , value.var="breach_perc")
clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)] <-round(clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)],2)
####
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

loss_rate_op2_fp =loss_rate_op1 %>%
  filter(X_id.cl %in% c("Flipkart"))%>%
  
  group_by(wkend_dt , X_id.cs)%>%
  summarise(sum=n())%>%
  mutate (loss_rate = sum*100/sum(sum))%>%
  filter(X_id.cs=="LOST")%>%
  dcast(X_id.cs~wkend_dt,value.var="loss_rate")
loss_rate_op2_fp[,sapply(loss_rate_op2_fp, is.numeric)] <-round(loss_rate_op2_fp[,sapply(loss_rate_op2_fp, is.numeric)],2)

##########flipkart Zone wise ###############

zn_mix_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zn_mix_op1$wkend_dt = as.character(zn_mix_op1$wkend_dt)

zn_mix_op1$wkend_dt= as.POSIXct(zn_mix_op1$wkend_dt , format="%j")

zn_mix_op2 = zn_mix_op1%>%
  filter(X_id.dl_zn%in% c("A" , "B" , "C" , "D" , "E"),
         X_id.cl %in% c("Flipkart"))%>%
  group_by(wkend_dt , X_id.dl_zn )%>%
  summarise(zm=sum(dl_count))%>%
  mutate(zn_pct = zm*100/sum(zm))%>%
  mutate(cum_sum = cumsum(zn_pct))


zn_mix_op3_fp = zn_mix_op2%>%
  dcast(X_id.dl_zn~wkend_dt , value.var="zn_pct")
zn_mix_op3_fp[,sapply(zn_mix_op3_fp, is.numeric)] <-round(zn_mix_op3_fp[,sapply(zn_mix_op3_fp, is.numeric)],2)

####################fpkart no of attempt/parcel #######################
dct_sum_op1_fp = dct_sum%>%
  filter(X_id.cl %in% c("Flipkart"))%>%
  group_by(X_id.dl_week)%>%
  summarise(sum_c = sum(dl_count) , sum_s=sum(dct_sum))%>%
  
  mutate(sum = sum_s/sum_c)%>%
  dcast(.~X_id.dl_week, value.var="sum")
dct_sum_op1_fp[,sapply(dct_sum_op1_fp, is.numeric)] <-round(dct_sum_op1_fp[,sapply(dct_sum_op1_fp, is.numeric)],2)

############################Pin
week_pin_count_op1=inner_join (week_pin_count , pin_code_mapping , by = c("X_id.pin" = "pin"))

week_pin_count_op1=week_pin_count_op1%>%
  filter(!(dispatch_center %in% c("NSZ" , "#NA"))) %>%
  filter(X_id.cl %in% c("Flipkart"))%>%
  group_by(X_id.dl_week)%>%
  summarise(pin_count=n_distinct(X_id.pin))%>%
  dcast(.~X_id.dl_week,value.var="pin_count")

###
###
cl_zn_rep_10_pd_dl1_3_1 <- cl_zn_rep_10_pd_dl1_3
colnames(cl_zn_rep_10_pd_dl1_3_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "0"),"D0",cl_zn_rep_10_pd_dl1_3_1$Metrics)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "1"),"D1",cl_zn_rep_10_pd_dl1_3_1$Metrics)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "2"),"D2",cl_zn_rep_10_pd_dl1_3_1$Metrics)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "3"),"D3",cl_zn_rep_10_pd_dl1_3_1$Metrics)

cl_rr_1_24_1 <- cl_rr_1_24
colnames(cl_rr_1_24_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, cl_rr_1_24_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "Delivered"),"Delivery efficiency - %",cl_zn_rep_10_pd_dl1_3_1$Metrics)

cl_zn_rep_10_pd_cl113_1 <- cl_zn_rep_10_pd_cl113
colnames(cl_zn_rep_10_pd_cl113_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, cl_zn_rep_10_pd_cl113_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "0"),"NDD Breach% - Zone B/C",cl_zn_rep_10_pd_dl1_3_1$Metrics)

cl_zn_rep_10_pd_cl13_1 <- cl_zn_rep_10_pd_cl13
colnames(cl_zn_rep_10_pd_cl13_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, cl_zn_rep_10_pd_cl13_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "0"),"SDD Breach % - Zone A",cl_zn_rep_10_pd_dl1_3_1$Metrics)

cl_rr_1_3_1 <- cl_rr_1_3
colnames(cl_rr_1_3_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, cl_rr_1_3_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "RTO"),"Return rate % ",cl_zn_rep_10_pd_dl1_3_1$Metrics)

zz_rd_rto_pd_op2_fp_1 <- zz_rd_rto_pd_op2_fp
colnames(zz_rd_rto_pd_op2_fp_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, zz_rd_rto_pd_op2_fp_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "1"),"RTO closure breach %",cl_zn_rep_10_pd_dl1_3_1$Metrics)

zz_rd_rto_pd_op4_fp_1 <- zz_rd_rto_pd_op4_fp
colnames(zz_rd_rto_pd_op4_fp_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, zz_rd_rto_pd_op4_fp_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "."),"RTO cycle (days)",cl_zn_rep_10_pd_dl1_3_1$Metrics)

cust_ret_op3_fp_1 <- cust_ret_op3_fp
colnames(cust_ret_op3_fp_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1,cust_ret_op3_fp_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse(cl_zn_rep_10_pd_dl1_3_1$Metrics == "0","Same Day",ifelse(cl_zn_rep_10_pd_dl1_3_1$Metrics == "1", "Within 1 Day",ifelse(cl_zn_rep_10_pd_dl1_3_1$Metrics =="2", "Within 2 Days", cl_zn_rep_10_pd_dl1_3_1$Metrics)))

#
Reach_m_1 <- Reach_m
colnames(Reach_m_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1,Reach_m_1)

clsr_brch_op5_1 <- clsr_brch_op5
colnames(clsr_brch_op5_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, clsr_brch_op5_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "."),"Breach Closure %",cl_zn_rep_10_pd_dl1_3_1$Metrics)

loss_rate_op2_fp_1 <- loss_rate_op2_fp
colnames(loss_rate_op2_fp_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, loss_rate_op2_fp_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "LOST"),"Loss Rate %",cl_zn_rep_10_pd_dl1_3_1$Metrics)

zn_mix_op3_fp_1 <- zn_mix_op3_fp
colnames(zn_mix_op3_fp_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, zn_mix_op3_fp_1)
colnames(cl_zn_rep_10_pd_dl1_3_1)[2] <- "a"
colnames(cl_zn_rep_10_pd_dl1_3_1)[3] <- "b"
colnames(cl_zn_rep_10_pd_dl1_3_1)[4] <- "c"
colnames(cl_zn_rep_10_pd_dl1_3_1)[5] <- "d"
colnames(cl_zn_rep_10_pd_dl1_3_1)[6] <- "e"
colnames(cl_zn_rep_10_pd_dl1_3_1)[7] <- "f"
colnames(cl_zn_rep_10_pd_dl1_3_1)[8] <- "g"
colnames(cl_zn_rep_10_pd_dl1_3_1)[9] <- "h"

dct_sum_op1_fp_1 <- dct_sum_op1_fp
colnames(dct_sum_op1_fp_1)[1] <- "Metrics"
colnames(dct_sum_op1_fp_1)[2] <- "a"
colnames(dct_sum_op1_fp_1)[3] <- "b"
colnames(dct_sum_op1_fp_1)[4] <- "c"
colnames(dct_sum_op1_fp_1)[5] <- "d"
colnames(dct_sum_op1_fp_1)[6] <- "e"
colnames(dct_sum_op1_fp_1)[7] <- "f"
colnames(dct_sum_op1_fp_1)[8] <- "g"
colnames(dct_sum_op1_fp_1)[9] <- "h"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, dct_sum_op1_fp_1)
cl_zn_rep_10_pd_dl1_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl1_3_1$Metrics == "."),"# of Attempt/Parcel",cl_zn_rep_10_pd_dl1_3_1$Metrics)

#
Cost_m_1 <- Cost_m
colnames(Cost_m_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl1_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl1_3_1, Cost_m_1)
cl_zn_rep_10_pd_dl1_3_1 <- cl_zn_rep_10_pd_dl1_3_1[-2]
cl_zn_rep_10_pd_dl1_3_1$Dimensions <- cl_zn_rep_10_pd_dl1_3_1$Metrics
cl_zn_rep_10_pd_dl1_3_1 <- cl_zn_rep_10_pd_dl1_3_1[ , c("Dimensions", "Metrics", "b", "c", "d", "e", "f", "g", "h")]
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "D0" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "D1" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "D2" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "D3"),"Speed",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Delivery efficiency - %" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "NDD Breach% - Zone B/C" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "SDD Breach % - Zone A"),"Reliability",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Return rate % " | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "RTO closure breach %" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "RTO cycle (days)"),"Returns",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Same Day" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Within 1 Day" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Within 2 Days"),"Customer Returns ",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Pin-codes (Serviceable)" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Pin-codes (Loaded)"),"Reach",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Loss Rate %" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Breach Closure %"),"Failure",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "A" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "B"| cl_zn_rep_10_pd_dl1_3_1$Dimensions == "C"| cl_zn_rep_10_pd_dl1_3_1$Dimensions == "D"| cl_zn_rep_10_pd_dl1_3_1$Dimensions == "E"),"Zone-mix",cl_zn_rep_10_pd_dl1_3_1$Dimensions)
cl_zn_rep_10_pd_dl1_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl1_3_1$Dimensions == "# of Attempt/Parcel" | cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Avg shipment weight "| cl_zn_rep_10_pd_dl1_3_1$Dimensions == "Cost/shipment "),"Cost",cl_zn_rep_10_pd_dl1_3_1$Dimensions)

######################################### Slide 33 R Code ##################################
##################D0 , D1 , D2 ###########################3
cl_zn_rep_10_pd_dl1_1 = cl_zn_rep_10_pd%>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_dl1_2 = cl_zn_rep_10_pd_dl1_1%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_dl1_2$wkend_dt = as.character(cl_zn_rep_10_pd_dl1_2$wkend_dt)

cl_zn_rep_10_pd_dl1_2$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_dl1_2$wkend_dt , format="%j")


cl_zn_rep_10_pd_dl1_3 = cl_zn_rep_10_pd_dl1_2%>%
  group_by(wkend_dt , X_id.fddMinusPd)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct = sum*100/sum(sum))%>%
  mutate(cumsum = cumsum(pct))%>%
  filter(X_id.fddMinusPd<=3)

cl_zn_rep_10_pd_dl1_3 = cl_zn_rep_10_pd_dl1_3%>%
  dcast(X_id.fddMinusPd~wkend_dt,value.var="cumsum")%>%
  dplyr::rename(Speed = X_id.fddMinusPd )


cl_zn_rep_10_pd_dl2_1 = cl_zn_rep_10_pd%>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_dl2_2 = cl_zn_rep_10_pd_dl2_1%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_dl2_2$wkend_dt = as.character(cl_zn_rep_10_pd_dl2_2$wkend_dt)

cl_zn_rep_10_pd_dl2_2$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_dl2_2$wkend_dt , format="%j")


cl_zn_rep_10_pd_dl2_3 = cl_zn_rep_10_pd_dl2_2%>%
  group_by(wkend_dt , X_id.fddMinusPd)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct = sum*100/sum(sum))%>%
  mutate(cumsum = cumsum(pct))%>%
  filter(X_id.fddMinusPd<=3)

cl_zn_rep_10_pd_dl2_3 = cl_zn_rep_10_pd_dl2_3%>%
  dcast(X_id.fddMinusPd~wkend_dt,value.var="cumsum")%>%
  dplyr::rename(Speed = X_id.fddMinusPd)
cl_zn_rep_10_pd_dl2_3[,sapply(cl_zn_rep_10_pd_dl2_3, is.numeric)] <-round(cl_zn_rep_10_pd_dl2_3[,sapply(cl_zn_rep_10_pd_dl2_3, is.numeric)],2)
################SNAPDEAL ##########
cl_rr_2_1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.cl %in% c("Snapdeal"),
         X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )


cl_rr_2_1$wkend_dt = as.character(cl_rr_2_1$wkend_dt)

cl_rr_2_1$wkend_dt = as.POSIXct(cl_rr_2_1$wkend_dt , format="%j")

cl_rr_2_2 = cl_rr_2_1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")

cl_rr_2_3 = cl_rr_2_2 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")
################ DElivered %age######################
cl_rr_2_1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon ,  X_id.cl %in% c("Snapdeal"),
         X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss=="Delivered" , "Delivered" , "Other")
  )


cl_rr_2_1$wkend_dt = as.character(cl_rr_2_1$wkend_dt)

cl_rr_2_1$wkend_dt = as.POSIXct(cl_rr_2_1$wkend_dt , format="%j")

cl_rr_2_22 = cl_rr_2_1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="Delivered")

cl_rr_2_24 = cl_rr_2_22 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")

###############Snapdeal
cl_zn_rep_10_pd_cl21 = cl_zn_rep_10_pd%>%
  filter(X_id.zn=="A" , X_id.cl %in% c("Snapdeal") )%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_cl21 = cl_zn_rep_10_pd_cl21%>%
  filter(pd_hr<8)%>%  
  mutate(sdd_flag = ifelse(X_id.fddMinusPd==0,1,0
                           
                           
  ))

cl_zn_rep_10_pd_cl21 = cl_zn_rep_10_pd_cl21%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_cl21$wkend_dt = as.character(cl_zn_rep_10_pd_cl21$wkend_dt)

cl_zn_rep_10_pd_cl21$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_cl21$wkend_dt , format="%j")

cl_zn_rep_10_pd_cl22 = cl_zn_rep_10_pd_cl21%>%
  group_by( wkend_dt , sdd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_cl23 = cl_zn_rep_10_pd_cl22%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(sdd_flag~wkend_dt  ,value.var="pct")%>%
  filter(sdd_flag==0)
cl_zn_rep_10_pd_cl23[,sapply(cl_zn_rep_10_pd_cl23, is.numeric)] <-round(cl_zn_rep_10_pd_cl23[,sapply(cl_zn_rep_10_pd_cl23, is.numeric)],2)

################################3
cl_zn_rep_10_pd_cl21 = cl_zn_rep_10_pd%>%
  filter(X_id.zn %in% c("B" , "C") ,  X_id.cl %in% c("Snapdeal"))%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_cl21 = cl_zn_rep_10_pd_cl21%>%
  filter(pd_hr<16)%>%
  mutate(ndd_flag = ifelse(X_id.fddMinusPd<2,1,0
  ))



cl_zn_rep_10_pd_cl21 = cl_zn_rep_10_pd_cl21%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_cl21$wkend_dt = as.character(cl_zn_rep_10_pd_cl21$wkend_dt)

cl_zn_rep_10_pd_cl21$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_cl21$wkend_dt , format="%j")

cl_zn_rep_10_pd_cl22 = cl_zn_rep_10_pd_cl21%>%
  group_by( wkend_dt , ndd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_cl213 = cl_zn_rep_10_pd_cl22%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(ndd_flag~wkend_dt  ,value.var="pct")%>%
  filter(ndd_flag==0)

#############Snapdeal RTO Closure, Cycle ################################
zz_rd_rto_pd_op1 = zz_rd_rto_pd%>%
  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rd_rto_pd_op1$wkend_dt = as.character(zz_rd_rto_pd_op1$wkend_dt)

zz_rd_rto_pd_op1$wkend_dt= as.POSIXct(zz_rd_rto_pd_op1$wkend_dt , format="%j")


zz_rd_rto_pd_op2_sd=zz_rd_rto_pd_op1%>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
mutate(rto_flag = ifelse(X_id.sd_day - X_id.rd_day>15,1,0))%>%
  group_by(wkend_dt , rto_flag)%>%
  summarise(sum=sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  dcast(rto_flag~wkend_dt,value.var="pct")%>%
  filter(rto_flag==1)
zz_rd_rto_pd_op2_sd[,sapply(zz_rd_rto_pd_op2_sd, is.numeric)] <-round(zz_rd_rto_pd_op2_sd[,sapply(zz_rd_rto_pd_op2_sd, is.numeric)],2)

zz_rd_rto_pd_op3_sd=zz_rd_rto_pd_op1%>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
  
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)

zz_rd_rto_pd_op3=zz_rd_rto_pd_op1%>%
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)

zz_rd_rto_pd_op4_sd=zz_rd_rto_pd_op3%>%
  group_by(wkend_dt )%>%
  summarise(sum=sum(nx)/sum(n))%>%
  dcast(.~wkend_dt,value.var="sum")
zz_rd_rto_pd_op4_sd[,sapply(zz_rd_rto_pd_op4_sd, is.numeric)] <-round(zz_rd_rto_pd_op4_sd[,sapply(zz_rd_rto_pd_op4_sd, is.numeric)],2)
################# Customer Return #####################

cust_ret_op1 = cl_zn_rep_10_pd%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))  %>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cust_ret_op1$wkend_dt = as.character(cust_ret_op1$wkend_dt)

cust_ret_op1$wkend_dt= as.POSIXct(cust_ret_op1$wkend_dt , format="%j")

cust_ret_op2 = cust_ret_op1%>%
  filter(X_id.pt=="Pickup",
         X_id.cl %in% c("Snapdeal RL"))%>%
  mutate(day_diff = ifelse(X_id.fddMinusPd>2,3,X_id.fddMinusPd))%>%
  group_by(wkend_dt , day_diff)%>%
  summarise(sum= sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  mutate(cum_sum=cumsum(pct))%>%
  filter(day_diff<3)

cust_ret_op3_sd = cust_ret_op2%>%
  dcast(day_diff~wkend_dt , value.var="cum_sum")
cust_ret_op3_sd[,sapply(cust_ret_op3_sd, is.numeric)] <-round(cust_ret_op3_sd[,sapply(cust_ret_op3_sd, is.numeric)],2)
######## Flipkart Closure Breach %, Loss Rate % ##########################
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

clsr_brch_op1 = loss_rate_op1%>%
  mutate(Del_diff=X_id.fdd_day-X_id.pd_day)%>%
  mutate(Breach_flag = ifelse(X_id.zn=="A" & Del_diff>1,1,
                              ifelse(X_id.zn=="B" & Del_diff>2 , 1,
                                     ifelse(X_id.zn=="C" & Del_diff>2 , 1,
                                            ifelse(X_id.zn=="D" & Del_diff>3 , 1,
                                                   ifelse(X_id.zn=="E" & Del_diff>3 , 1,0
                                                          
                                                   ))))))
clsr_brch_op1_sd=clsr_brch_op1%>%
  filter(X_id.cl %in% c("Snapdeal"))

clsr_brch_op2 = clsr_brch_op1_sd%>%
  group_by(wkend_dt)%>%
  summarise(sum_total=sum(dl_count))


clsr_brch_op3 = clsr_brch_op1_sd%>%
  filter(Breach_flag==1)%>%
  group_by(wkend_dt)%>%
  summarise(sum_breach=sum(dl_count))

##clsr_brch_op3
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5_sd=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)
##clsr_brch_op3
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)%>%
  dcast(.~wkend_dt , value.var="breach_perc")
clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)] <-round(clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)],2)

####
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

loss_rate_op2_sd =loss_rate_op1 %>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
  
  group_by(wkend_dt , X_id.cs)%>%
  summarise(sum=n())%>%
  mutate (loss_rate = sum*100/sum(sum))%>%
  filter(X_id.cs=="LOST")%>%
  dcast(X_id.cs~wkend_dt,value.var="loss_rate")
loss_rate_op2_sd[,sapply(loss_rate_op2_sd, is.numeric)] <-round(loss_rate_op2_sd[,sapply(loss_rate_op2_sd, is.numeric)],2)
##################Snapdeal Zone Mix #####################

zn_mix_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zn_mix_op1$wkend_dt = as.character(zn_mix_op1$wkend_dt)

zn_mix_op1$wkend_dt= as.POSIXct(zn_mix_op1$wkend_dt , format="%j")


zn_mix_op2 = zn_mix_op1%>%
  filter(X_id.dl_zn%in% c("A" , "B" , "C" , "D" , "E"),
         X_id.cl %in% c("Snapdeal"))%>%
  group_by(wkend_dt , X_id.dl_zn )%>%
  summarise(zm=sum(dl_count))%>%
  mutate(zn_pct = zm*100/sum(zm))%>%
  mutate(cum_sum = cumsum(zn_pct))


zn_mix_op3_sd = zn_mix_op2%>%
  dcast(X_id.dl_zn~wkend_dt , value.var="zn_pct")
zn_mix_op3_sd[,sapply(zn_mix_op3_sd, is.numeric)] <-round(zn_mix_op3_sd[,sapply(zn_mix_op3_sd, is.numeric)],2)
######################### No of Attempt/Parcel ######################
dct_sum_op1_sd = dct_sum%>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
  group_by(X_id.dl_week)%>%
  summarise(sum_c = sum(dl_count) , sum_s=sum(dct_sum))%>%
  
  mutate(sum = sum_s/sum_c) %>%
  dcast(.~X_id.dl_week, value.var="sum")
dct_sum_op1_sd[,sapply(dct_sum_op1_sd, is.numeric)] <-round(dct_sum_op1_sd[,sapply(dct_sum_op1_sd, is.numeric)],2)
#############################################pin code##############
week_pin_count_op1=inner_join (week_pin_count , pin_code_mapping , by = c("X_id.pin" = "pin"))

week_pin_count_op1=week_pin_count_op1%>%
  filter(!(dispatch_center %in% c("NSZ" , "#NA"))) %>%
  filter(X_id.cl %in% c("Snapdeal"))%>%
  group_by(X_id.dl_week)%>%
  summarise(pin_count=n_distinct(X_id.pin))%>%
  dcast(.~X_id.dl_week,value.var="pin_count")

###
###
cl_zn_rep_10_pd_dl2_3_1 <- cl_zn_rep_10_pd_dl2_3
colnames(cl_zn_rep_10_pd_dl2_3_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "0"),"D0",cl_zn_rep_10_pd_dl2_3_1$Metrics)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "1"),"D1",cl_zn_rep_10_pd_dl2_3_1$Metrics)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "2"),"D2",cl_zn_rep_10_pd_dl2_3_1$Metrics)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "3"),"D3",cl_zn_rep_10_pd_dl2_3_1$Metrics)

cl_rr_2_24_1 <- cl_rr_2_24
colnames(cl_rr_2_24_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, cl_rr_2_24_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "Delivered"),"Delivery efficiency - %",cl_zn_rep_10_pd_dl2_3_1$Metrics)

cl_zn_rep_10_pd_cl213_1 <- cl_zn_rep_10_pd_cl213
colnames(cl_zn_rep_10_pd_cl213)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, cl_zn_rep_10_pd_cl213)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "0"),"NDD Breach% - Zone B/C",cl_zn_rep_10_pd_dl2_3_1$Metrics)

cl_zn_rep_10_pd_cl23_1 <- cl_zn_rep_10_pd_cl23
colnames(cl_zn_rep_10_pd_cl23_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, cl_zn_rep_10_pd_cl23_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "0"),"SDD Breach % - Zone A",cl_zn_rep_10_pd_dl2_3_1$Metrics)

cl_rr_2_3_1 <- cl_rr_2_3
colnames(cl_rr_2_3_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, cl_rr_2_3_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "RTO"),"Return rate % ",cl_zn_rep_10_pd_dl2_3_1$Metrics)

zz_rd_rto_pd_op2_sd_1 <- zz_rd_rto_pd_op2_sd
colnames(zz_rd_rto_pd_op2_sd_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, zz_rd_rto_pd_op2_sd_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "1"),"RTO closure breach %",cl_zn_rep_10_pd_dl2_3_1$Metrics)

zz_rd_rto_pd_op4_sd_1 <- zz_rd_rto_pd_op4_sd
colnames(zz_rd_rto_pd_op4_sd_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, zz_rd_rto_pd_op4_sd_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "."),"RTO cycle (days)",cl_zn_rep_10_pd_dl2_3_1$Metrics)

cust_ret_op3_sd_1 <- cust_ret_op3_sd
colnames(cust_ret_op3_sd_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1,cust_ret_op3_sd_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse(cl_zn_rep_10_pd_dl2_3_1$Metrics == "0","Same Day",ifelse(cl_zn_rep_10_pd_dl2_3_1$Metrics == "1", "Within 1 Day",ifelse(cl_zn_rep_10_pd_dl2_3_1$Metrics =="2", "Within 2 Days", cl_zn_rep_10_pd_dl2_3_1$Metrics)))

#
Reach_m_1 <- Reach_m
colnames(Reach_m_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1,Reach_m_1)

clsr_brch_op5_1 <- clsr_brch_op5
colnames(clsr_brch_op5_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, clsr_brch_op5_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "."),"Breach Closure %",cl_zn_rep_10_pd_dl2_3_1$Metrics)

loss_rate_op2_sd_1 <- loss_rate_op2_sd
colnames(loss_rate_op2_sd_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, loss_rate_op2_sd_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "LOST"),"Loss Rate %",cl_zn_rep_10_pd_dl2_3_1$Metrics)

zn_mix_op3_sd_1 <- zn_mix_op3_sd
colnames(zn_mix_op3_sd_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, zn_mix_op3_sd_1)
colnames(cl_zn_rep_10_pd_dl2_3_1)[2] <- "a"
colnames(cl_zn_rep_10_pd_dl2_3_1)[3] <- "b"
colnames(cl_zn_rep_10_pd_dl2_3_1)[4] <- "c"
colnames(cl_zn_rep_10_pd_dl2_3_1)[5] <- "d"
colnames(cl_zn_rep_10_pd_dl2_3_1)[6] <- "e"
colnames(cl_zn_rep_10_pd_dl2_3_1)[7] <- "f"
colnames(cl_zn_rep_10_pd_dl2_3_1)[8] <- "g"
colnames(cl_zn_rep_10_pd_dl2_3_1)[9] <- "h"


dct_sum_op1_sd_1 <- dct_sum_op1_sd
colnames(dct_sum_op1_sd_1)[1] <- "Metrics"
colnames(dct_sum_op1_sd_1)[2] <- "a"
colnames(dct_sum_op1_sd_1)[3] <- "b"
colnames(dct_sum_op1_sd_1)[4] <- "c"
colnames(dct_sum_op1_sd_1)[5] <- "d"
colnames(dct_sum_op1_sd_1)[6] <- "e"
colnames(dct_sum_op1_sd_1)[7] <- "f"
colnames(dct_sum_op1_sd_1)[8] <- "g"
colnames(dct_sum_op1_sd_1)[9] <- "h"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, dct_sum_op1_sd_1)
cl_zn_rep_10_pd_dl2_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl2_3_1$Metrics == "."),"# of Attempt/Parcel",cl_zn_rep_10_pd_dl2_3_1$Metrics)

#
Cost_m_1 <- Cost_m
colnames(Cost_m_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl2_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl2_3_1, Cost_m_1)

cl_zn_rep_10_pd_dl2_3_1 <- cl_zn_rep_10_pd_dl2_3_1[-2]

cl_zn_rep_10_pd_dl2_3_1$Dimensions <- cl_zn_rep_10_pd_dl2_3_1$Metrics
cl_zn_rep_10_pd_dl2_3_1 <- cl_zn_rep_10_pd_dl2_3_1[ , c("Dimensions", "Metrics", "b", "c", "d", "e", "f", "g", "h")]
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "D0" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "D1" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "D2" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "D3"),"Speed",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Delivery efficiency - %" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "NDD Breach% - Zone B/C" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "SDD Breach % - Zone A"),"Reliability",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Return rate % " | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "RTO closure breach %" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "RTO cycle (days)"),"Returns",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Same Day" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Within 1 Day" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Within 2 Days"),"Customer Returns ",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Pin-codes (Serviceable)" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Pin-codes (Loaded)"),"Reach",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Loss Rate %" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Breach Closure %"),"Failure",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "A" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "B"| cl_zn_rep_10_pd_dl2_3_1$Dimensions == "C"| cl_zn_rep_10_pd_dl2_3_1$Dimensions == "D"| cl_zn_rep_10_pd_dl2_3_1$Dimensions == "E"),"Zone-mix",cl_zn_rep_10_pd_dl2_3_1$Dimensions)
cl_zn_rep_10_pd_dl2_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl2_3_1$Dimensions == "# of Attempt/Parcel" | cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Avg shipment weight "| cl_zn_rep_10_pd_dl2_3_1$Dimensions == "Cost/shipment "),"Cost",cl_zn_rep_10_pd_dl2_3_1$Dimensions)

######################################### Slide 34 R Code ##################################
cl_zn_rep_10_pd_dl3_1 = cl_zn_rep_10_pd%>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_dl3_2 = cl_zn_rep_10_pd_dl3_1%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_dl3_2$wkend_dt = as.character(cl_zn_rep_10_pd_dl3_2$wkend_dt)

cl_zn_rep_10_pd_dl3_2$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_dl3_2$wkend_dt , format="%j")


cl_zn_rep_10_pd_dl3_3 = cl_zn_rep_10_pd_dl3_2%>%
  group_by(wkend_dt , X_id.fddMinusPd)%>%
  summarise(sum = sum(dl_count))%>%
  mutate(pct = sum*100/sum(sum))%>%
  mutate(cumsum = cumsum(pct))%>%
  filter(X_id.fddMinusPd<=3)

cl_zn_rep_10_pd_dl3_3 = cl_zn_rep_10_pd_dl3_3%>%
  dcast(X_id.fddMinusPd~wkend_dt,value.var="cumsum")%>%
  dplyr::rename(Speed = X_id.fddMinusPd)
cl_zn_rep_10_pd_dl3_3[,sapply(cl_zn_rep_10_pd_dl3_3, is.numeric)] <-round(cl_zn_rep_10_pd_dl3_3[,sapply(cl_zn_rep_10_pd_dl3_3, is.numeric)],2)
##############Hs18
cl_rr_3_1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon ,
         X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"),
         X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss %in% c("RTO" , "Returned") , "RTO" , "Other")
  )


cl_rr_3_1$wkend_dt = as.character(cl_rr_3_1$wkend_dt)

cl_rr_3_1$wkend_dt = as.POSIXct(cl_rr_3_1$wkend_dt , format="%j")

cl_rr_3_2 = cl_rr_3_1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="RTO")

cl_rr_3_3 = cl_rr_3_2 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")

################ DElivered %age######################
cl_rr_3_1 = cl_cs_pt_rep_13_10_3_zn%>%
  
  filter(X_id.dl_date>=slide_3_min_mon ,  X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"),
         X_id.dl_pt %in% c("COD" , "Pre-paid")) %>%
  mutate(wkend_dt = (((as.numeric(X_id.dl_date) -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6 , 
         Status = ifelse(X_id.dl_cs_ss=="Delivered" , "Delivered" , "Other")
  )


cl_rr_3_1$wkend_dt = as.character(cl_rr_3_1$wkend_dt)

cl_rr_3_1$wkend_dt = as.POSIXct(cl_rr_3_1$wkend_dt , format="%j")

cl_rr_3_22 = cl_rr_3_1 %>%
  group_by( wkend_dt , Status)%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum)) %>%
  filter(Status=="Delivered")

cl_rr_3_24 = cl_rr_3_22 %>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(Status~wkend_dt  ,value.var="pct")

##############HS18
cl_zn_rep_10_pd_cl31 = cl_zn_rep_10_pd%>%
  filter(X_id.zn=="A" , X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS") )%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_cl31 = cl_zn_rep_10_pd_cl31%>%
  filter(pd_hr<8)%>%  
  mutate(sdd_flag = ifelse(X_id.fddMinusPd==0,1,0
                           
                           
  ))

cl_zn_rep_10_pd_cl31 = cl_zn_rep_10_pd_cl31%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_cl31$wkend_dt = as.character(cl_zn_rep_10_pd_cl31$wkend_dt)

cl_zn_rep_10_pd_cl31$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_cl31$wkend_dt , format="%j")

cl_zn_rep_10_pd_cl32 = cl_zn_rep_10_pd_cl31%>%
  group_by( wkend_dt , sdd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_cl33 = cl_zn_rep_10_pd_cl32%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(sdd_flag~wkend_dt  ,value.var="pct")%>%
  filter(sdd_flag==0)
cl_zn_rep_10_pd_cl33[,sapply(cl_zn_rep_10_pd_cl33, is.numeric)] <-round(cl_zn_rep_10_pd_cl33[,sapply(cl_zn_rep_10_pd_cl33, is.numeric)],2)
################################3
cl_zn_rep_10_pd_cl31 = cl_zn_rep_10_pd%>%
  filter(X_id.zn %in% c("B" , "C") ,  X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  mutate(pd_hr = as.numeric(strftime(X_id.pd , "%H"))
         , 
         pd_day = as.integer(strftime(X_id.pd , format="%j")))

cl_zn_rep_10_pd_cl31 = cl_zn_rep_10_pd_cl31%>%
  filter(pd_hr<16)%>%
  mutate(ndd_flag = ifelse(X_id.fddMinusPd<2,1,0
  ))
cl_zn_rep_10_pd_cl31 = cl_zn_rep_10_pd_cl31%>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cl_zn_rep_10_pd_cl31$wkend_dt = as.character(cl_zn_rep_10_pd_cl31$wkend_dt)

cl_zn_rep_10_pd_cl31$wkend_dt= as.POSIXct(cl_zn_rep_10_pd_cl31$wkend_dt , format="%j")

cl_zn_rep_10_pd_cl32 = cl_zn_rep_10_pd_cl31%>%
  group_by( wkend_dt , ndd_flag )%>%
  summarize(sum = sum(as.numeric(dl_count)))%>%
  mutate(pct=100*sum/sum(sum))

cl_zn_rep_10_pd_cl313 = cl_zn_rep_10_pd_cl32%>%
  mutate(pct = paste(as.numeric(round(pct , 1)),"%")) %>%
  dcast(ndd_flag~wkend_dt  ,value.var="pct")%>%
  filter(ndd_flag==0)

#############HS18 RTO Closure, Cycle ################################
zz_rd_rto_pd_op1 = zz_rd_rto_pd%>%
  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zz_rd_rto_pd_op1$wkend_dt = as.character(zz_rd_rto_pd_op1$wkend_dt)

zz_rd_rto_pd_op1$wkend_dt= as.POSIXct(zz_rd_rto_pd_op1$wkend_dt , format="%j")


zz_rd_rto_pd_op2_hs18=zz_rd_rto_pd_op1%>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  
  mutate(rto_flag = ifelse(X_id.sd_day-X_id.rd_day>15,1,0))%>%
  group_by(wkend_dt , rto_flag)%>%
  summarise(sum=sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  dcast(rto_flag~wkend_dt,value.var="pct") %>%
  
  filter(rto_flag==1)
zz_rd_rto_pd_op2_hs18[,sapply(zz_rd_rto_pd_op2_hs18, is.numeric)] <-round(zz_rd_rto_pd_op2_hs18[,sapply(zz_rd_rto_pd_op2_hs18, is.numeric)],2)
zz_rd_rto_pd_op3_hs18=zz_rd_rto_pd_op1%>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)

zz_rd_rto_pd_op3=zz_rd_rto_pd_op1%>%
  mutate(date_diff = X_id.sd_day-X_id.rd_day)%>%
  group_by(wkend_dt , date_diff)%>%
  summarise(n=sum(dl_count))%>%
  mutate(nx=n*date_diff)


zz_rd_rto_pd_op4_hs18=zz_rd_rto_pd_op3%>%
  group_by(wkend_dt )%>%
  summarise(sum=sum(nx)/sum(n))%>%
  dcast(.~wkend_dt,value.var="sum")
zz_rd_rto_pd_op4_hs18[,sapply(zz_rd_rto_pd_op4_hs18, is.numeric)] <-round(zz_rd_rto_pd_op4_hs18[,sapply(zz_rd_rto_pd_op4_hs18, is.numeric)],2)

#############HS18 Customer Returns #######################
cust_ret_op1 = cl_zn_rep_10_pd%>%
  mutate(pd_day = as.integer(strftime(X_id.pd , format="%j")))  %>%
  filter(pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

cust_ret_op1$wkend_dt = as.character(cust_ret_op1$wkend_dt)

cust_ret_op1$wkend_dt= as.POSIXct(cust_ret_op1$wkend_dt , format="%j")


cust_ret_op2 = cust_ret_op1%>%
  filter(X_id.pt=="Pickup",
         X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  mutate(day_diff = ifelse(X_id.fddMinusPd>2,3,X_id.fddMinusPd))%>%
  group_by(wkend_dt , day_diff)%>%
  summarise(sum= sum(dl_count))%>%
  mutate(pct=sum*100/sum(sum))%>%
  mutate(cum_sum=cumsum(pct))%>%
  filter(day_diff<3)

cust_ret_op3_hs18 = cust_ret_op2%>%
  dcast(day_diff~wkend_dt , value.var="cum_sum")
cust_ret_op3_hs18[,sapply(cust_ret_op3_hs18, is.numeric)] <-round(cust_ret_op3_hs18[,sapply(cust_ret_op3_hs18, is.numeric)],2)
###############Hs 18
zn_mix_op1 = cl_cs_pt_rep_13_10_3_zn%>%
  filter(X_id.dl_date>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.dl_date -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)

zn_mix_op1$wkend_dt = as.character(zn_mix_op1$wkend_dt)

zn_mix_op1$wkend_dt= as.POSIXct(zn_mix_op1$wkend_dt , format="%j")

zn_mix_op2 = zn_mix_op1%>%
  filter(X_id.dl_zn%in% c("A" , "B" , "C" , "D" , "E"),
         X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  group_by(wkend_dt , X_id.dl_zn )%>%
  summarise(zm=sum(dl_count))%>%
  mutate(zn_pct = zm*100/sum(zm))%>%
  mutate(cum_sum = cumsum(zn_pct))


zn_mix_op3_hs18 = zn_mix_op2%>%
  dcast(X_id.dl_zn~wkend_dt , value.var="zn_pct")
zn_mix_op3_hs18[,sapply(zn_mix_op3_hs18, is.numeric)] <-round(zn_mix_op3_hs18[,sapply(zn_mix_op3_hs18, is.numeric)],2)
###########################
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

loss_rate_op2_hs18 =loss_rate_op1 %>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  
  group_by(wkend_dt , X_id.cs)%>%
  summarise(sum=n())%>%
  mutate (loss_rate = sum*100/sum(sum))%>%
  filter(X_id.cs=="LOST")%>%
  dcast(X_id.cs~wkend_dt,value.var="loss_rate")
loss_rate_op2_hs18[,sapply(loss_rate_op2_hs18, is.numeric)] <-round(loss_rate_op2_hs18[,sapply(loss_rate_op2_hs18, is.numeric)],2)
##############Closure Breach##########
loss_rate_op1 = closure_breach%>%  filter(X_id.pd_day>=slide_3_min_mon) %>%
  mutate(wkend_dt = (((X_id.pd_day -slide_3_min_mon)%/%7)                     
                     *7)
         +as.integer(slide_3_min_mon)+6)


loss_rate_op1$wkend_dt = as.character(loss_rate_op1$wkend_dt)

loss_rate_op1$wkend_dt = as.POSIXct(loss_rate_op1$wkend_dt , format="%j")

clsr_brch_op1 = loss_rate_op1%>%
  mutate(Del_diff=X_id.fdd_day-X_id.pd_day)%>%
  mutate(Breach_flag = ifelse(X_id.zn=="A" & Del_diff>1,1,
                              ifelse(X_id.zn=="B" & Del_diff>2 , 1,
                                     ifelse(X_id.zn=="C" & Del_diff>2 , 1,
                                            ifelse(X_id.zn=="D" & Del_diff>3 , 1,
                                                   ifelse(X_id.zn=="E" & Del_diff>3 , 1,0
                                                          
                                                   ))))))
clsr_brch_op1_sd=clsr_brch_op1%>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))

clsr_brch_op2 = clsr_brch_op1_sd%>%
  group_by(wkend_dt)%>%
  summarise(sum_total=sum(dl_count))


clsr_brch_op3 = clsr_brch_op1_sd%>%
  filter(Breach_flag==1)%>%
  group_by(wkend_dt)%>%
  summarise(sum_breach=sum(dl_count))

##clsr_brch_op3############
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5_sd=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)
##clsr_brch_op3
clsr_brch_op4 = inner_join( clsr_brch_op2, clsr_brch_op3 , by="wkend_dt")
clsr_brch_op5=clsr_brch_op4%>%
  mutate(breach_perc=sum_breach*100/sum_total)%>%
  dcast(.~wkend_dt , value.var="breach_perc")
clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)] <-round(clsr_brch_op5[,sapply(clsr_brch_op5, is.numeric)],2)
#########hs18 No of Attempt/Parcel ##########################
dct_sum_op1_hs18 = dct_sum%>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  group_by(X_id.dl_week)%>%
  summarise(sum_c = sum(dl_count) , sum_s=sum(dct_sum))%>%
  
  mutate(sum = sum_s/sum_c) %>%
  dcast(.~X_id.dl_week, value.var="sum")
dct_sum_op1_hs18[,sapply(dct_sum_op1_hs18, is.numeric)] <-round(dct_sum_op1_hs18[,sapply(dct_sum_op1_hs18, is.numeric)],2)
###########################################################
week_pin_count_op1=inner_join (week_pin_count , pin_code_mapping , by = c("X_id.pin" = "pin"))

week_pin_count_op1=week_pin_count_op1%>%
  filter(!(dispatch_center %in% c("NSZ" , "#NA"))) %>%
  filter(X_id.cl %in% c("HomeShop18" , "HomeShop18-FOS"))%>%
  group_by(X_id.dl_week)%>%
  summarise(pin_count=n_distinct(X_id.pin))%>%
  dcast(.~X_id.dl_week,value.var="pin_count")

###
###
cl_zn_rep_10_pd_dl3_3_1 <- cl_zn_rep_10_pd_dl3_3
colnames(cl_zn_rep_10_pd_dl3_3_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "0"),"D0",cl_zn_rep_10_pd_dl3_3_1$Metrics)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "1"),"D1",cl_zn_rep_10_pd_dl3_3_1$Metrics)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "2"),"D2",cl_zn_rep_10_pd_dl3_3_1$Metrics)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "3"),"D3",cl_zn_rep_10_pd_dl3_3_1$Metrics)

cl_rr_3_24_1 <- cl_rr_3_24
colnames(cl_rr_3_24_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, cl_rr_3_24_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "Delivered"),"Delivery efficiency - %",cl_zn_rep_10_pd_dl3_3_1$Metrics)

cl_zn_rep_10_pd_cl313_1 <- cl_zn_rep_10_pd_cl313
colnames(cl_zn_rep_10_pd_cl313_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, cl_zn_rep_10_pd_cl313_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "0"),"NDD Breach% - Zone B/C",cl_zn_rep_10_pd_dl3_3_1$Metrics)

cl_zn_rep_10_pd_cl33_1 <- cl_zn_rep_10_pd_cl33
colnames(cl_zn_rep_10_pd_cl33_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, cl_zn_rep_10_pd_cl33_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "0"),"SDD Breach % - Zone A",cl_zn_rep_10_pd_dl3_3_1$Metrics)

cl_rr_3_3_1 <- cl_rr_3_3
colnames(cl_rr_3_3_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, cl_rr_3_3_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "RTO"),"Return rate % ",cl_zn_rep_10_pd_dl3_3_1$Metrics)

zz_rd_rto_pd_op2_hs18_1 <- zz_rd_rto_pd_op2_hs18
colnames(zz_rd_rto_pd_op2_hs18_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, zz_rd_rto_pd_op2_hs18_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "1"),"RTO closure breach %",cl_zn_rep_10_pd_dl3_3_1$Metrics)

zz_rd_rto_pd_op4_hs18_1 <- zz_rd_rto_pd_op4_hs18
colnames(zz_rd_rto_pd_op4_hs18_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, zz_rd_rto_pd_op4_hs18_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "."),"RTO cycle (days)",cl_zn_rep_10_pd_dl3_3_1$Metrics)

cust_ret_op3_hs18_1 <- cust_ret_op3_hs18
colnames(cust_ret_op3_hs18_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1,cust_ret_op3_hs18_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse(cl_zn_rep_10_pd_dl3_3_1$Metrics == "0","Same Day",ifelse(cl_zn_rep_10_pd_dl3_3_1$Metrics == "1", "Within 1 Day",ifelse(cl_zn_rep_10_pd_dl3_3_1$Metrics =="2", "Within 2 Days", cl_zn_rep_10_pd_dl3_3_1$Metrics)))

#
Reach_m_1 <- Reach_m
colnames(Reach_m_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1,Reach_m_1)

clsr_brch_op5_1 <- clsr_brch_op5
colnames(clsr_brch_op5_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, clsr_brch_op5_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "."),"Breach Closure %",cl_zn_rep_10_pd_dl3_3_1$Metrics)

loss_rate_op2_hs18_1 <- loss_rate_op2_hs18
colnames(loss_rate_op2_hs18_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, loss_rate_op2_hs18_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "LOST"),"Loss Rate %",cl_zn_rep_10_pd_dl3_3_1$Metrics)

zn_mix_op3_hs18_1 <- zn_mix_op3_hs18
colnames(zn_mix_op3_hs18_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, zn_mix_op3_hs18_1)
colnames(cl_zn_rep_10_pd_dl3_3_1)[1] <- "Metrics"
colnames(cl_zn_rep_10_pd_dl3_3_1)[2] <- "a"
colnames(cl_zn_rep_10_pd_dl3_3_1)[3] <- "b"
colnames(cl_zn_rep_10_pd_dl3_3_1)[4] <- "c"
colnames(cl_zn_rep_10_pd_dl3_3_1)[5] <- "d"
colnames(cl_zn_rep_10_pd_dl3_3_1)[6] <- "e"
colnames(cl_zn_rep_10_pd_dl3_3_1)[7] <- "f"
colnames(cl_zn_rep_10_pd_dl3_3_1)[8] <- "g"
colnames(cl_zn_rep_10_pd_dl3_3_1)[9] <- "h"


dct_sum_op1_hs18_1 <- dct_sum_op1_hs18
colnames(dct_sum_op1_hs18_1)[1] <- "Metrics"
colnames(dct_sum_op1_hs18_1)[1] <- "Metrics"
colnames(dct_sum_op1_hs18_1)[2] <- "a"
colnames(dct_sum_op1_hs18_1)[3] <- "b"
colnames(dct_sum_op1_hs18_1)[4] <- "c"
colnames(dct_sum_op1_hs18_1)[5] <- "d"
colnames(dct_sum_op1_hs18_1)[6] <- "e"
colnames(dct_sum_op1_hs18_1)[7] <- "f"
colnames(dct_sum_op1_hs18_1)[8] <- "g"
colnames(dct_sum_op1_hs18_1)[9] <- "h"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, dct_sum_op1_hs18_1)
cl_zn_rep_10_pd_dl3_3_1$Metrics = ifelse((cl_zn_rep_10_pd_dl3_3_1$Metrics == "."),"# of Attempt/Parcel",cl_zn_rep_10_pd_dl3_3_1$Metrics)

#
Cost_m_1 <- Cost_m
colnames(Cost_m_1)[1] <- "Metrics"
cl_zn_rep_10_pd_dl3_3_1 <- rbind.fill(cl_zn_rep_10_pd_dl3_3_1, Cost_m_1)

cl_zn_rep_10_pd_dl3_3_1 <- cl_zn_rep_10_pd_dl3_3_1[-2]

cl_zn_rep_10_pd_dl3_3_1$Dimensions <- cl_zn_rep_10_pd_dl3_3_1$Metrics
cl_zn_rep_10_pd_dl3_3_1 <- cl_zn_rep_10_pd_dl3_3_1[ , c("Dimensions", "Metrics", "b", "c", "d", "e", "f", "g", "h")]
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "D0" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "D1" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "D2" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "D3"),"Speed",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Delivery efficiency - %" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "NDD Breach% - Zone B/C" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "SDD Breach % - Zone A"),"Reliability",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Return rate % " | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "RTO closure breach %" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "RTO cycle (days)"),"Returns",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Same Day" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Within 1 Day" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Within 2 Days"),"Customer Returns ",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Pin-codes (Serviceable)" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Pin-codes (Loaded)"),"Reach",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Loss Rate %" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Breach Closure %"),"Failure",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "A" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "B"| cl_zn_rep_10_pd_dl3_3_1$Dimensions == "C"| cl_zn_rep_10_pd_dl3_3_1$Dimensions == "D"| cl_zn_rep_10_pd_dl3_3_1$Dimensions == "E"),"Zone-mix",cl_zn_rep_10_pd_dl3_3_1$Dimensions)
cl_zn_rep_10_pd_dl3_3_1$Dimensions = ifelse((cl_zn_rep_10_pd_dl3_3_1$Dimensions == "# of Attempt/Parcel" | cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Avg shipment weight "| cl_zn_rep_10_pd_dl3_3_1$Dimensions == "Cost/shipment "),"Cost",cl_zn_rep_10_pd_dl3_3_1$Dimensions)

################################################################################
################## R Scripts For PPT Start From Here############################

mydoc = pptx( title = "title", template = "C:/Users/abc/Desktop/R practice/Operation Report 6.0.pptx")
# display layouts names
slide.layouts( mydoc )

################## Add a Title slide ######################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )

mydoc = addTitle( mydoc, "Performance Review" ) #set the main title
#mydoc = addSubtitle( mydoc , "By:- BAM&R Team.")#set the sub-title


########## Add another Sub-Title Slide ####################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )

mydoc = addTitle( mydoc, "Overall Volume Metrics" ) #set the main title

########### Add page number, date, footer #################
#mydoc = addPageNumber(mydoc)
#mydoc = addDate(mydoc)
##################### Slide 3 ##############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Plan v/s Actual - Volumes" )
options( "ReporteRs-fontsize" = 12 )
# Create a FlexTable with data.frame mtcars, display rownames
# use different formatting properties for header and body cells
MyFTable = FlexTable( data = zz_rep_13_10_3_op8, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
# zebra stripes - alternate colored backgrounds on table rows
#MyFTable = FlexTable( data=zz_rep_13_10_3_op8, header.par.props = parProperties(text.align = "center" ))
# applies a border grid on table
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
# add MyFTable into document 
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 4 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Plan v/s Actual - Origin" )
options( "ReporteRs-fontsize" = 12 )
# Create a FlexTable with data.frame mtcars, display rownames
# use different formatting properties for header and body cells
MyFTable = FlexTable( data = final_vol, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
# zebra stripes - alternate colored backgrounds on table rows
#MyFTable = FlexTable( data=zz_rep_13_10_3_op8, header.par.props = parProperties(text.align = "center" ))
# applies a border grid on table
# add MyFTable into document 
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 5 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Origin-Wise Volumes" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_5_op5, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 6 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Destination-Wise Volumes" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_7_op3_metro33, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 7 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Destination-Wise Volumes" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_7_op3_t1_3, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 8 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Destination-Wise Volumes" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_7_op3_t2_3, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = setZebraStyle( MyFTable, odd = "#FFFFFF", even = "#FAFAFA" )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Sub-Title Slide 9 ####################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )
mydoc = addTitle( mydoc, "Key Operating Metrices" ) #set the main title

######################### slide 10 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrices" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_10_op22_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 4 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 5, to = 9 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 11 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrices" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 1 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 2, to = 5 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 6, to = 9 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 10, to = 13 )
MyFTable = FlexTable( data = panel_use_m_11, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 12 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrices" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = Tonnage_m_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 12, to = 15 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 13 #######################################
##################### FlexTable #########################################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrices" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_24_op23_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 4, to = 6 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 7, to = 8 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

######################### slide 14 #######################################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrices" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = nsl_week_misrouting_11, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 8 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 9, to = 16 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Sub-Title Slide 15 ####################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )
mydoc = addTitle( mydoc, "Lane-Metrics - Forward" ) #set the main title

########## Title Slide 16 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics ex-DEL" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_del_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 12, to = 15 )
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Slide 17 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics ex-BOM" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_bom_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 12, to = 15 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 18 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics ex-BLR" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_blr_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 12, to = 15 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 19 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics ex-CCU" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_ccu_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 12, to = 15 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 20 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics-JAI" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_jai_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 10 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 11, to = 14 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 21 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics-STV" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_stv_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 12, to = 15 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 22 ####################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics ex-HYD" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_16_op5_hyd_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 1, to = 3 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 4, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 8, to = 11 )
MyFTable = spanFlexTableRows( MyFTable, j = 1:2, from = 12, to = 15 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 23 ####################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )
mydoc = addTitle( mydoc, "Lane Metrics - Returns/Reverse" ) #set the main title
#mydoc = addSubtitle( mydoc , "Overall Volume Metrics")#set the sub-title

################## Slide 24 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics-Return Rate" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_24_op4_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

################## Slide 25 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Lane Metrics Return Rate-COD" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = zz_rep_24_op4_cod_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
# add MyFTable into document 
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 26 ####################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )
mydoc = addTitle( mydoc, "Station Metrics-Processing" ) #set the main title
#mydoc = addSubtitle( mydoc , "Overall Volume Metrics")#set the sub-title

################## Slide 27 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Processing Metrics-DEL" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = Panel_use_m_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 1 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 2, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 8, to = 11 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

################## Slide 28 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Processing Metrics-BOM" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = Panel_use_mm_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 1 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 2, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 8, to = 11 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )
################## Slide 29 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Processing Metrics-BLR" )
options( "ReporteRs-fontsize" = 12 )
MyFTable = FlexTable( data = Panel_use_mmm_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 1 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 2, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 8, to = 11 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

########## Title Slide 30 ####################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )
mydoc = addTitle( mydoc, "Client Metrics" ) #set the main title
#mydoc = addSubtitle( mydoc , "Overall Volume Metrics")#set the sub-title

################## Slide 31 ############################
mydoc = addSlide( mydoc, slide.layout = "Title Slide" )
mydoc = addTitle( mydoc, "Client Metrics" ) #set the main title

################## Slide 32 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrics-Flipkart" )
options( "ReporteRs-fontsize" = 10 )
MyFTable = FlexTable( data = cl_zn_rep_10_pd_dl1_3_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 4 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 5, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 8, to = 10 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 11, to = 13 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 14, to = 15 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 16, to = 17 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 18, to = 22 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 23, to = 25 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

################## Slide 33 ############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrics-Snapdeal" )
options( "ReporteRs-fontsize" = 10 )
MyFTable = FlexTable( data = cl_zn_rep_10_pd_dl2_3_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 4 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 5, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 8, to = 10 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 11, to = 13 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 14, to = 15 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 16, to = 17 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 18, to = 22 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 23, to = 25 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

################## Slide 34 ############################
##################### FlexTable ##############################
##################### FlexTable ##############################
mydoc = addSlide( mydoc, slide.layout = "Title and Content" )
mydoc = addTitle( mydoc, "Key Operating Metrics-HS-18" )
options( "ReporteRs-fontsize" = 10 )
MyFTable = FlexTable( data = cl_zn_rep_10_pd_dl3_3_1, add.rownames = FALSE, header.cell.props = cellProperties( background.color = "#AC58FA" ), header.par.props = parProperties(text.align = "center" ))
MyFTable[ , ] = parProperties( text.align = 'center')
MyFTable = setColumnsColors( MyFTable, j=1, colors = '#CED8F6' )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 1, to = 4 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 5, to = 7 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 8, to = 10 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 11, to = 13 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 14, to = 15 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 16, to = 17 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 18, to = 22 )
MyFTable = spanFlexTableRows( MyFTable, j = 1, from = 23, to = 25 )
MyFTable = setFlexTableBorders(MyFTable, outer.vertical = borderProperties( width = 2 ), outer.horizontal = borderProperties( width = 2 ))
mydoc = addFlexTable( mydoc, MyFTable )
writeDoc( mydoc, file = "pp_long_demo.pptx" )

