import csv
import psycopg2
import h5py
import pandas as pd
try:
    conn = psycopg2.connect("dbname='dev' user='vipul' host='delhivery-db-cluster.ccrrutce66xe.eu-west-1.redshift.amazonaws.com' password='Password1' port=5439")
except:
    print "I am unable to connect to the database"

#using named cursor
cur = conn.cursor('cur')
h5store = pd.HDFStore('Nov_31_03_with_ivd_new.h5')
#h5store = pd.HDFStore('June_new_scans_with_ivd.h5')
max_row = 500000
table = 'scan_fact'
scanned_time_range = ['2016-10-31', '2016-11-03']

query = "select waybillnum, scanned_datetime, incoming_verified_datetime, action_code, origin_center_city, dest_center_city, scan_location_center, nsl_code, connection, status_code, status_type, pid_number from %s where scanned_datetime between '%s' and '%s'" % ('scan_facts',scanned_time_range[0], scanned_time_range[1])
print query

cur.execute(query)

def sanitize(s):
    return s.replace('(','').replace(')','').replace(' ','_').replace('-','_')
  
while 1:
    rows = cur.fetchmany(max_row)
    df = pd.DataFrame(rows)
    df.columns = ['wbn', 'sd','ivd', 'act', 'occ', 'cnc', 'sl' , 'nsl', 'conn', 'ss', 'st', 'pid']
    df = df.sort(['sl','sd']).reset_index()
    del df['index']
    sl_list = list(set(df['sl'].tolist()))
    sl_list.sort()
    for sl in sl_list:
        index_list = df['sl'][df['sl'] == sl].index
        sl_df = df[index_list[0]:index_list[-1]]
        sl_key = sanitize(sl)
        h5store.append(sl_key,sl_df, data_columns=True,min_itemsize = 50, index = False)
#    break
