import csv
import psycopg2
import pandas as pd
import datetime
import logging

logger = logging.getLogger('/home/ankur/ist_bag/ist_bag.log')

try:
    conn = psycopg2.connect("dbname='dev' user='vipul' host='delhivery-db-cluster.ccrrutce66xe.eu-west-1.redshift.amazonaws.com' password='Password1' port=5439")
except:
    logger.error('could not establish connection with redshift')
    print "I am unable to connect to the database"

logging.info('connection established with redshift')
cur = conn.cursor()

query ="WITH FINAL AS\
  (SELECT dist_bag_ist.ist_number,\
          dist_bag_ist.status_code,\
          dist_bag_ist.origin_center,\
          dist_bag_ist.destination_center,\
          dist_bag_ist.CONNECTION,\
          dist_bag_ist.coloaders,\
          dist_bag_ist.ist_vehicle_id,\
          dist_bag_ist.vehicle_registration_number,\
          dist_bag_ist.updated_by,\
          dist_bag_ist.updated_datetime,\
          dist_bag_ist.scanned_datetime,\
          dist_bag_ist.scan_location_center,\
          NULLIF(bag_sub.bag_priority_date,'')::date AS bag_priority_date_clean,\
          sum(NULLIF(bag_sub.bag_priority_count,'')::integer) AS bag_priority_count,\
          count(dist_bag_ist.bag_seal_number) AS bag_count,\
          listagg(dist_bag_ist.bag_seal_number,'||') within\
   GROUP (\
          ORDER BY dist_bag_ist.bag_seal_number) AS agg_list_bag\
   FROM\
     (SELECT DISTINCT *\
      FROM\
        (SELECT bag_ist_map.ist_number,\
                bag_ist_map.status_code,\
                bag_ist_map.origin_center,\
                bag_ist_map.destination_center,\
                bag_ist_map.CONNECTION,\
                bag_ist_map.coloaders,\
                bag_ist_map.ist_vehicle_id,\
                bag_ist_map.vehicle_registration_number,\
                bag_ist_map.updated_by,\
                bag_ist_map.updated_datetime,\
                bag_ist_map.scanned_datetime,\
                bag_ist_map.scan_location_center,\
                bag_ist_map.bag_seal_number,\
                bag_ist_map.last_updated_time,\
                max(bag_ist_map.last_updated_time) over (partition BY bag_ist_map.bag_seal_number) AS max_last_updated_time\
         FROM\
           (SELECT ist_latest_scan.ist_number,\
                   ist_latest_scan.status_code,\
                   ist_latest_scan.origin_center,\
                   ist_latest_scan.destination_center,\
                   ist_latest_scan.CONNECTION,\
                   ist_latest_scan.coloaders,\
                   ist_latest_scan.ist_vehicle_id,\
                   ist_latest_scan.vehicle_registration_number,\
                   ist_latest_scan.updated_by,\
                   ist_latest_scan.updated_datetime,\
                   ist_latest_scan.scanned_datetime,\
                   ist_latest_scan.scan_location_center,\
                   bag_ist.bag_seal_number,\
                   bag_ist.last_updated_time\
            FROM bag_ist\
            JOIN\
              (SELECT ist_1.ist_number,\
                      ist_scan_facts_sub.status_code,\
                      ist_scan_facts_sub.origin_center,\
                      ist_scan_facts_sub.destination_center,\
                      ist_scan_facts_sub.CONNECTION,\
                      ist_scan_facts_sub.coloaders,\
                      ist_scan_facts_sub.ist_vehicle_id,\
                      ist_scan_facts_sub.vehicle_registration_number,\
                      ist_scan_facts_sub.updated_by,\
                      ist_scan_facts_sub.updated_datetime,\
                      ist_scan_facts_sub.scanned_datetime,\
                      ist_scan_facts_sub.scan_location_center\
               FROM\
                 (SELECT ist_scan_facts.ist_number,\
                         ist_scan_facts.status_code,\
                         ist_scan_facts.origin_center,\
                         ist_scan_facts.destination_center,\
                         ist_scan_facts.CONNECTION,\
                         ist_scan_facts.coloaders,\
                         ist_scan_facts.ist_vehicle_id,\
                         ist_scan_facts.vehicle_registration_number,\
                         ist_scan_facts.updated_by,\
                         ist_scan_facts.updated_datetime,\
                         ist_scan_facts.scanned_datetime,\
                         ist_scan_facts.scan_location_center\
                  FROM ist_scan_facts\
                  WHERE scanned_datetime BETWEEN dateadd('m', 330-120, getdate()) AND dateadd('m', 330, getdate())) ist_scan_facts_sub\
               JOIN\
                 (SELECT ist_number,\
                         max(scanned_datetime) AS max_scanned_datetime\
                  FROM ist_scan_facts\
                  WHERE scanned_datetime BETWEEN dateadd('m', 330-120, getdate()) AND dateadd('m', 330, getdate())\
                  GROUP BY ist_number) ist_1 ON ist_1.ist_number = ist_scan_facts_sub.ist_number\
               AND ist_1.max_scanned_datetime = ist_scan_facts_sub.scanned_datetime) ist_latest_scan ON bag_ist.ist_number =ist_latest_scan.ist_number\
            AND ist_latest_scan.status_code <> 'WIP'\
            AND bag_ist.bag_seal_number <>'Not Found') bag_ist_map) max_updated_time\
      WHERE max_updated_time.last_updated_time = max_updated_time.max_last_updated_time) dist_bag_ist\
   LEFT OUTER JOIN\
     (SELECT bag_seal_number,\
             max(bag_priority_count) bag_priority_count,\
             max(bag_priority_date) bag_priority_date\
      FROM bag\
      WHERE created_datetime BETWEEN CURRENT_DATE - 2 AND CURRENT_DATE + 1\
      GROUP BY bag_seal_number) bag_sub ON bag_sub.bag_seal_number = dist_bag_ist.bag_seal_number\
   GROUP BY dist_bag_ist.ist_number,\
            dist_bag_ist.status_code,\
            dist_bag_ist.origin_center,\
            dist_bag_ist.destination_center,\
            dist_bag_ist.CONNECTION,\
            dist_bag_ist.coloaders,\
            dist_bag_ist.ist_vehicle_id,\
            dist_bag_ist.vehicle_registration_number,\
            dist_bag_ist.updated_by,\
            dist_bag_ist.updated_datetime,\
            dist_bag_ist.scanned_datetime,\
            dist_bag_ist.scan_location_center,\
            bag_priority_date_clean)\
SELECT B_final.IST,\
       B_final.coloaders,\
       B_final.vehicle,\
       B_final.origin,\
       B_final.destination,\
       linehaul_connection.cutoff_departure,\
       linehaul_connection.cutoff_arrival,\
       B_final.conn_id,\
       linehaul_connection.conn_duration AS duc,\
       linehaul_connection.inprocess_time,\
       linehaul_connection.outprocess_time,\
       B_final.last_scan_date,\
       B_final.current_status,\
       B_final.updated_by,\
       B_final.updated_datetime,\
       B_final.total_bags,\
       B_final.bag_seal_numbers,\
       B_final.extra_vid,\
       B_final.priority_shipment_count,\
       B_final.priority_ist_date\
 FROM\
  (SELECT final.ist_number AS IST,\
          final.coloaders AS coloaders,\
          final.vehicle_registration_number AS vehicle,\
          final.origin_center AS origin,\
          final.destination_center AS destination,\
          final.scanned_datetime AS last_scan_date,\
          final.scan_location_center AS last_scan_location,\
          final.status_code AS current_status,\
          final.CONNECTION AS conn_id,\
          final.updated_by AS updated_by,\
          final.updated_datetime updated_datetime,\
          t.total_bags AS total_bags,\
          t.agg_agg_list_bag AS bag_seal_numbers,\
          final.ist_vehicle_id AS extra_vid,\
          final.bag_priority_count AS priority_shipment_count,\
          t.min_bag_priority_date_clean AS priority_ist_date\
   FROM FINAL\
   JOIN\
     (SELECT FINAL.ist_number,\
                   min(final.bag_priority_date_clean) min_bag_priority_date_clean,\
                   sum(final.bag_count) AS total_bags,\
                   listagg(FINAL.agg_list_bag,'||') within\
      GROUP (\
             ORDER BY FINAL.agg_list_bag) AS agg_agg_list_bag\
      FROM FINAL\
      GROUP BY ist_number) t ON FINAL.ist_number = t.ist_number\
   AND FINAL.bag_priority_date_clean = t.min_bag_priority_date_clean) B_final\
 LEFT OUTER JOIN linehaul_connection ON B_final.conn_id = linehaul_connection.id"

t0 = datetime.datetime.now()
try:
    cur.execute(query)
except:
    logger.error('query failed at redshift')

rows = cur.fetchall()
t1 = datetime.datetime.now()
print t1-t0
file_name ='/home/ankur/ist_bag/ist_bag_last_two_hour.csv'

f = open(file_name,'w')
fout = csv.writer(f)
for row in rows:
    fout.writerow([row[0], row[1], row[2],row[3], row[4], row[5],row[6], row[7], row[8],row[9], row[10], row[11],row[12], row[13], row[14],row[15], row[16], row[17],row[18], row[19]])

f.close()
logger.info('data fetch is complete')
