import csv,sys
import requests

filepath = sys.argv[1]

#*********************************************************************************#
#here we are calling the Bird Data API for uploading the missing WBN on WBN#

with open(filepath,'r') as input_file:
        r = requests.post('https://hq.delhivery.com/api/p/bird/push.json',headers={'Authorization': 'Token 473d834b25c1dec102158c90f05bd63cd057ab88'},files={'waybill_data': input_file}, verify=False)
        print r.status_code                          
