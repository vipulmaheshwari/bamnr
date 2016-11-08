import csv
import psycopg2
import h5py
import pandas as pd
import datetime

facilities = pd.read_csv('/disk1/hdf_data/Sheet1.csv')

hub_pc = facilities[(facilities['Center_Type'] == "Hub") | (facilities['Center_Type'] == "PC")]

hub_pc_list  = hub_pc['HQ_Name'].tolist()

try:
    conn = psycopg2.connect("dbname='dev' user='vipul' host='delhivery-db-cluster.ccrrutce66xe.eu-west-1.redshift.amazonaws.com' password='Password1' port=5439")
except:
    print "I am unable to connect to the database"

cur = conn.cursor()
table = 'scan_facts'
this_date = str(datetime.datetime.today().date())
one_week_before = str((datetime.datetime.today() - datetime.timedelta(days = 7)).date())
scanned_time_range = [one_week_before, this_date]

query = "SELECT scan_location_center, \
scanned_date, \
datepart('h', scanned_datetime) as hour, \
count(waybillnum) as c \
FROM %s \
WHERE scanned_datetime > incoming_verified_datetime and scanned_datetime between '%s' and '%s' \
GROUP BY scan_location_center, \
scanned_date, \
hour \
ORDER BY scan_location_center, \
scanned_date, \
hour" % (table, scanned_time_range[0], scanned_time_range[1])
print query

cur.execute(query)

rows = cur.fetchall()
df = pd.DataFrame(rows)
df.columns = [ 'sl','sd', 'hour', 'total_count']
df = df.sort(['sl','sd','hour']).reset_index()

all_facilities = list(set(df['sl'].tolist()))
dates = list(set(df['sd'].tolist()))
dates.sort()
del df['index']
all_columns = ['facility'] + dates
index = range(24)
df_all_fac = pd.DataFrame(index = [], columns = all_columns)
fout = csv.writer(open('facility_list.csv','w'))
fout.writerow(['fac_name'])
for fac in hub_pc_list:
    if fac in all_facilities:
        fout.writerow([fac])
        df_grp = df[df['sl'] == fac]
        df_plot = pd.DataFrame(index = index, columns = all_columns)    
        df_plot['facility'] = pd.Series([fac] * 24)                     
        for d in dates:
            d_sl = df_grp[df_grp['sd'] == d]                            
            day_count = []                                              
            for i in range(24):                                         
                val = d_sl[d_sl['hour'] == i ].total_count
                if len(val.values) == 0:
                    count = 0                                           
                else:                                                   
                    count = val.values[0]                               
                day_count.append(count)                             
            day_c = pd.Series(day_count)                                
            df_plot[d] = day_c
        df_all_fac = pd.concat([df_all_fac,df_plot])
    else:                                                               
        continue

#for fac in hub_pc_list:
#    if fac in all_facilities:
#        df_grp = df[df['sl'] == fac]
#        df_plot = pd.DataFrame(index = index, columns = all_columns)
#        df_plot['facility'] = pd.Series([fac] * 24)
#        for d in dates:
#            d_sl = df_grp[df_grp['sd'] == d]
#            day_count = []
#            for i in range(24):
#                val = d_sl[d_sl['hour'] == i ].count
#                if len(val.values) == 0:
#                    count = 0
#                else:
#                    count = val.values[0]
#                day_count.append(count)
#            day_c = pd.Series(day_count)
#            df_plot[d] = day_c
#        df_all_fac = pd.concat([df_all_fac,df_plot])
#    else:
#        print fac

df_all_fac.to_csv('/disk1/hdf_data/facility_wise_hourly_scan_agg.csv', index = False)
