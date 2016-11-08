import pandas as pd
import datetime
import csv
#store =pd.HDFStore('last_week_scans.h5')
store =pd.HDFStore('july_1_7_16_scans.h5')

all_facility = store.keys()

facilities = pd.read_csv('Sheet1.csv')

hub_pc = facilities[(facilities['Center_Type'] == "Hub") | (facilities['Center_Type'] == "PC")]

hub_pc_list  = hub_pc['HQ_Name'].tolist()

#fout = csv.writer(open('faci_red.csv','w'))

def sanitize(s):
    return s.replace('(','').replace(')','').replace(' ','_').replace('-','_')

def get_day(row):
    day = row[1].day
    return day
def get_hour(row):
    hour = row[1].hour
    return hour
all_columns = ['facility']
for i in range(1,7):
    d = 'day_%s' % i
    all_columns.append(d)
    index = range(24)
#print all_facility
df_all_fac = pd.DataFrame(index = [], columns = all_columns)
for fac in hub_pc_list:
    fac_ = '/' + sanitize(fac)
#    print fac
    if fac_ in all_facility:
        df_fac = store.select(fac_)
        df_ = df_fac[df_fac['sd'] > df_fac['ivd']]
        df_sorted = df_.sort(['sd'])
        df_sorted['sd_day'] = df_sorted.apply(get_day, axis = 1)
        df_sorted['sd_hour'] = df_sorted.apply(get_hour, axis = 1)
        df_grp = df_sorted.groupby(['sd_day','sd_hour']).wbn.count().reset_index()
#        columns = []
#        for i in range(1,7):
#            d = 'day_%s' % i
#            columns.append(d)
#            index = range(24)
        df_plot = pd.DataFrame(index = index, columns = all_columns)
        df_plot['facility'] = pd.Series([fac] * 24)
        cols = range(1,7)
        for col in cols:
            d = df_grp[df_grp['sd_day'] == col]
            day = "day_%s" % col
            day_count = []
            for i in range(24):
                val = d[d['sd_hour'] == i].wbn
                if len(val.values)  == 0:
                    count = 0
                else:
                    count = val.values[0]
                day_count.append(count)
            day_c = pd.Series(day_count)
            df_plot[day] = day_c
        df_all_fac = pd.concat([df_all_fac, df_plot])
    else: 
        print fac
df_all_fac.to_csv('test.csv', index = False)
