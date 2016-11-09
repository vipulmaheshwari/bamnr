#!/usr/bin/python
from bson.objectid import ObjectId
import datetime
import time


#*********************************************************************************#
#This scipt is use for pepare the mongo data export query#
# Time for last 25 hors with UTC time conversion#

now1 = datetime.datetime.now()
now = now1 - datetime.timedelta(hours=-5.5)
yesterday = now1 - datetime.timedelta(hours=19.5)

start_date = datetime.datetime(yesterday.year, yesterday.month, yesterday.day,yesterday.hour, yesterday.minute, yesterday.second)
start = start_date.strftime('%Y-%m-%d') +'T'+ start_date.strftime('00:00:00') + 'Z'
end_date = datetime.datetime(now.year, now.month, now.day)
end_date1 = datetime.datetime(now.year, now.month, now.day,now.hour, now.minute, now.second)
end = end_date.strftime('%Y-%m-%d') +'T'+ end_date1.strftime('00:00:00') + 'Z'

#final query for cs.sd
print '{ "cs.sd" : { "$gte" :  ISODate("%s"), "$lte" :  ISODate("%s") } , "cs.ss" :{$in:["Delivered", "RTO", "DTO", "Collected","Closed"]}}' % ( str(start), str(end) )

