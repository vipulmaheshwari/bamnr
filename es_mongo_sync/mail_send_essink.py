import send_mail_boto
import sys
import upload_s3put
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from bson.objectid import ObjectId
import datetime
import time

now1 = datetime.datetime.now()
yesterday = now1 - datetime.timedelta(hours=-3)
start_date = datetime.datetime(yesterday.year, yesterday.month, yesterday.day, yesterday.hour, yesterday.minute, yesterday.second)

text1 = 'Mongo_Delivered_Count :' + sys.argv[1]
text2 = 'ES_Delivered_Count :' + sys.argv[2]
text3 = 'Mongo_Dispatched_Count :' + sys.argv[3]
text4 = 'ES_Dispatched_Count :' + sys.argv[4]
text5 = 'Mongo_Pickup_Count :' + sys.argv[5]
text6 = 'ES_Pickup_Count :' + sys.argv[6]
text7 = 'Mongo_Return_Count :' + sys.argv[7]
text8 = 'ES_Return_Count :' + sys.argv[8]

text = text1 +'\n' + text2+'\n' +text3 +'\n' +text4+ '\n'+ text5+ '\n'+ text6+ '\n'+ text7+ '\n'+ text8

#print text
Subject = 'Sync check on ES and Mongo : ' + start_date.strftime('%Y-%m-%d')
From = 'noreply@delhivery.com'
#To = 'ankur.shishodia@delhivery.com'
To = 'ankur.shishodia@delhivery.com, vipul.maheshwari@delhivery.com, vikram.khurana1@delhivery.com, shikhar.khattar@delhivery.com, sankalp.srivastava@delhivery.com, harmandeep.singh1@delhivery.com'
send_mail_boto.mail_send(From,To,Subject,text,[])





