#!/bin/bash

# This script is use for exporting the mongo data from package mongo 
echo "mongo dump"

mongoexport --host 172.0.8.35 --db delhivery_db -c packages --csv --fields wbn,cs.ss,cs.sd,pt,sht,mwn --query "$(python /data1/delhivery/birdrec/mongoexp.py)" --out "/data1/delhivery/birdrec/package_data.csv" -u ro_express -p 'x[td7R%;,'

echo "mongo dump is over" 

