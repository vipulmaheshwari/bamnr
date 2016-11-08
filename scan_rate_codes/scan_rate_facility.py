import csv
import os
import pandas as pd
import numpy as np
from multiprocessing import Pool

store = pd.HDFStore('may_16_scans.h5')    
def get_hour(row):
    h = int(row[12]/np.timedelta64(1,'h'))
    return h

def get_facility_distribution(facility_list):    
    for facility in facility_list:
        df = store.select(facility)
        df_sorted = df.sort(['wbn','sd'])
        df_first_row = df_sorted.groupby('wbn').first().reset_index()
        df_first_row = df_first_row[['wbn','sd']]
        df_first_row.columns = ['wbn','first_scan_time']
        df_merged = pd.merge(df_sorted, df_first_row, on = 'wbn', how = 'left')
        df_merged['diff_time'] = df_merged['sd'] - df_merged['first_scan_time']
        df_merged['diff_hour'] = df_merged.apply(get_hour, axis = 1)
        df_hour_wbn_scan = df_merged.groupby(['wbn','diff_hour']).wbn.count().reset_index(name = 'scan_count')
        prev_hour = -1
        prev_wbn = df_hour_wbn_scan['wbn'][0]
        i = 0
        df_test = df_hour_wbn_scan
        waybill_list = []
        for index, row in df_test.iterrows():
                #print prev_hour, prev_wbn
            if row['wbn'] == prev_wbn:
                if row['diff_hour'] == (prev_hour + 1):
                    #df_new.loc[i] = [row['wbn'], row['diff_hour'], row['scan_count']]
                    waybill_list.append([row['wbn'], row['diff_hour'], row['scan_count']])
                    i += 1
                    prev_hour += 1
                    continue
                else:
                    #print i
                    gap = row['diff_hour'] - prev_hour
                    for j in range(gap-1):
                         #df_new.loc[i] = [row['wbn'], (prev_hour + j + 1), 0]
                        waybill_list.append([row['wbn'], (prev_hour + j + 1), 0])
                        i += 1
                    #df_new.loc[i] = [row['wbn'], row['diff_hour'], row['scan_count']]
                    waybill_list.append([row['wbn'], row['diff_hour'], row['scan_count']])
                    i += 1
                prev_hour = row['diff_hour']    
            else:
                prev_hour = 0
                #df_new.loc[i] = [row['wbn'], row['diff_hour'], row['scan_count']]
                waybill_list.append([row['wbn'], row['diff_hour'], row['scan_count']])
                i += 1
                prev_wbn = row['wbn']
        
        index = np.array(range(len(waybill_list)))
        df_new = pd.DataFrame(columns=['wbn','diff_hour','scan_count'], index = index)
        df_new.loc[0:]=waybill_list
        #df_new.to_csv('sam_consolidates.csv', index = False)
        df_new['diff_hour'] = df_new['diff_hour'].astype(int)
        df_new['scan_count'] = df_new['scan_count'].astype(int)
        
        hour_list = list(set(df_new['diff_hour'].tolist()))
        hour_list.sort()
        directory = '/disk1/hdf_data/compute_mean/facilities/%s/' % facility
        if not os.path.exists(directory):
            os.makedirs(directory)
        fout = csv.writer(open('%s/%s_means.csv' % (directory, facility),'w'))
        fout.writerow(['scan_hour', 'mean'])
        dis_hour = range(24)
        for h in hour_list:
            df_new_h = df_new[df_new['diff_hour'] == h]
            df_new_h_grp =  df_new_h.groupby('scan_count').wbn.count().reset_index()
            df_new_h_grp['total_scans'] = df_new_h_grp['scan_count']*df_new_h_grp['wbn']
            if h in dis_hour:
                
                df_new_h_grp.to_csv('%s/%s.csv' % (directory,h),index = False)
            aveg = float(df_new_h_grp['total_scans'].sum())/df_new_h_grp['wbn'].sum()
            fout.writerow([h,aveg])

def sanitize(s):
    return s.replace('/','')

if __name__ == "__main__":
    NUM_CPU = 5
    p = Pool(processes = NUM_CPU)
    keys_list = store.keys()
    facility_list = map(sanitize, keys_list)
    start = 0
    end = len(facility_list)
    diff = end/NUM_CPU
    try:
        while start < end:
            p.apply_async(get_facility_distribution, args=(facility_list[start:start+diff], ))
            start += diff
        p.close()
        p.join()
    except (KeyboardInterrupt, SystemExit):
        print "Exiting..."
        p.terminate(ty_distribution)
        p.join()
