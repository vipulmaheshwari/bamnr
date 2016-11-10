#!/bin/bash

SYSTEM_DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo $SYSTEM_DATE

echo "Redshift Dump is started"

#**************************#
# script for data dump from redshift#

python /home/ankur/ist_bag/get_data.py

echo "Redshift Dump is over"

#**************************#
# load data to CT mysql table#

mysql -h 'dashboardcentral.cz3sq5x0ps8m.ap-southeast-1.rds.amazonaws.com' -u 'vipul' -p'vipul@123' --local_infile=1 -e "LOAD DATA LOCAL INFILE '/home/ankur/ist_bag/ist_bag_last_two_hour.csv' INTO TABLE test.dash_lh_ist_data_v1 FIELDS TERMINATED BY ',';"

#**************************#
# apply commit#

mysql -h 'dashboardcentral.cz3sq5x0ps8m.ap-southeast-1.rds.amazonaws.com' -u 'vipul' -p'vipul@123' --local_infile=1 -e "commit;"

#**************************#
# call the SP#

mysql -h 'dashboardcentral.cz3sq5x0ps8m.ap-southeast-1.rds.amazonaws.com' -u 'vipul' -p'vipul@123' --local_infile=1 -e "call test.dash_lh_istdata();"
echo "Table Updated"
