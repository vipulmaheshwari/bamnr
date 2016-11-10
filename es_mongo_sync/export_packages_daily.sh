#!/bin/bash

# example of using arguments to a script
echo "mongo dump"

mongoexport --host 172.0.8.35 --db delhivery_db -c packages --csv --fields wbn,pd,pt,pdd,cs.st,cs.ss,date.frd,dd.fdd --query "$(python /data1/delhivery/es_mongo_sync/pmongexp_packages_bck.py)" --out "/data1/delhivery/es_mongo_sync/package_data.csv" -u ro_express -p 'x[td7R%;,'

echo "mongo dump is over" 
