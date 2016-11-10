import csv
import psycopg2
import pandas as pd
import datetime

#**************************#
# here we are cleaing or deleting the table content for new refresh data in postgres#

try:
    conn2 = psycopg2.connect("dbname='ct_aggregates' user='ct_aggregates' host='ctaggregates.cz3sq5x0ps8m.ap-southeast-1.rds.amazonaws.com' password='fe851488c60b'")
except:
    print "I am unable to connect to the database"

cur2 = conn2.cursor()

query1 = "delete from dc_capcity"
cur2.execute(query1)

cur2.close()
conn2.commit()
