import csv
import psycopg2
import h5py
import pandas as pd
try:
    conn = psycopg2.connect("dbname='dev' user='vipul' host='delhivery-db-cluster.ccrrutce66xe.eu-west-1.redshift.amazonaws.com' password='Password1' port=5439")
except:
    print "I am unable to connect to the database"

cur = conn.cursor('cur')
h5store = pd.HDFStore('aug_bag_25_31_16_scans.h5')
max_row = 500000
table = 'bag_scan_facts'
scanned_time_range = ['2016-08-25', '2016-08-31']

query = "select bag_seal_number, scanned_datetime, scan_location_center, action_code, origin_center, destination_center, nsl_code, connection, status_code, status_type from %s where scanned_datetime between '%s' and '%s'" % (table, scanned_time_range[0], scanned_time_range[1])
print query

cur.execute(query)

def sanitize(s):
    return s.replace('(','').replace(')','').replace(' ','_').replace('-','_')
  
while 1:
    rows = cur.fetchmany(max_row)
    df = pd.DataFrame(rows)
    df.columns = ['bs', 'sd','sl', 'act', 'oc', 'cn' , 'nsl', 'conn', 'ss', 'st']
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
