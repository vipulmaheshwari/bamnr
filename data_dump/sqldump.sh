#!/bin/bash

SYSTEM_DATE=$(date +"%Y-%m-%d %H:%M:%S")


export SUBJECT1="Taking Data Dump"

#**************************#
# Taking Database dunp from CT MySQL for Capacity File#

mysql -h 'dashboardcentral.cz3sq5x0ps8m.ap-southeast-1.rds.amazonaws.com' -u 'ankurs' -p'ankurs' -e 'select dc,cap,cap from test.dash_dccap where lupd in(select max(lupd) from test.dash_dccap)' | sed  's/\t/,/g' > /home/ankur/data_dump/output.csv

#**************************#
# Delete the data from table and load refresh data#

python /home/ankur/data_dump/delete_data.py 
python /home/ankur/data_dump/data_dump1.py

echo "Backup Done"
