import csv
import psycopg2
import pandas as pd
import datetime


#**************************#
# COPY Cammad to load data in POSTGRS TABLE #

SQL_STATEMENT = """
    COPY %s FROM STDIN WITH
        CSV
        HEADER
        DELIMITER AS ','
    """

file1 = open('/home/ankur/data_dump/output.csv')

#**************************#
# Function for bulk upload in postgres table#

def process_file(conn, table_name, file_object):
    cursor = conn.cursor()
    cursor.copy_expert(sql=SQL_STATEMENT % table_name, file=file_object)
    conn.commit()
    cursor.close()

#**************************#
# Connection String adn Final table name#

conn2 = psycopg2.connect("dbname='ct_aggregates' user='ct_aggregates' host='ctaggregates.cz3sq5x0ps8m.ap-southeast-1.rds.amazonaws.com' password='fe851488c60b'")
try:
    process_file(conn2, 'dc_capcity', file1)
finally:
    conn2.close()


