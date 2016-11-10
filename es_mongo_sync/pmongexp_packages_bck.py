#!/usr/bin/python
# using pymongo-2.2
from bson.objectid import ObjectId
import datetime
import time

#select time for 48 hours from current time -1 
now1 = datetime.datetime.now()
now = now1 - datetime.timedelta(hours=-4.5)
yesterday = now1 - datetime.timedelta(hours=43.5)

#time format accroding to pd
start_date = datetime.datetime(yesterday.year, yesterday.month, yesterday.day,yesterday.hour, yesterday.minute, yesterday.second)
start = start_date.strftime('%Y-%m-%d') +'T'+ start_date.strftime('%H:%M:%S') + 'Z'
end_date = datetime.datetime(now.year, now.month, now.day)
end_date1 = datetime.datetime(now.year, now.month, now.day,now.hour, now.minute, now.second)
end = end_date.strftime('%Y-%m-%d') +'T'+ end_date1.strftime('%H:%M:%S') + 'Z'

#final query for pd last 48 hours
print '{ "pd" : { "$gte" :  ISODate("%s"), "$lte" :  ISODate("%s") } }' % ( str(start), str(end) )
 

