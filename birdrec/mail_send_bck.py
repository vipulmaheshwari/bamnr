import send_mail_boto
import sys
import upload_s3put
import upload_s3put_bck
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from bson.objectid import ObjectId
import datetime
import time

#*************************Bird and Mongo Data Recon.******************************#
#This script call s3 upload for extracted files and for calling the mail script once process is over #

now1 = datetime.datetime.now()
yesterday = now1 - datetime.timedelta(hours=20)
start_date = datetime.datetime(yesterday.year, yesterday.month, yesterday.day, yesterday.hour, yesterday.minute, yesterday.second)


#*********************************************************************************#
#taking count agrumnets for mongo and Bird data counts #


text1 = 'Mongo Total WBN :' + sys.argv[1]
text2 = 'Bird Total WBN :' + sys.argv[2]


#*********************************************************************************#
#Missing data WBN file path to upload#


filepath = sys.argv[3]
filepath1 = sys.argv[4]


#*********************************************************************************#
#Upload file on S3#


text3 = 'Mongo WBN Missing in Bird : ' + upload_s3put.upload_s3(filepath,72)


#*********************************************************************************#
#Upload file on S3#

text4 = 'Bird WBN Missing in Mongo : ' + upload_s3put_bck.upload_s3(filepath1,72)


#*********************************************************************************#
#Final mail body #

text = text1 +'\n' + text2+'\n' +'\n' + text3 +'\n' +'\n' + text4;


#*********************************************************************************#
#Mail function#

Subject = 'Bird Data Reconciliation for : ' + start_date.strftime('%Y-%m-%d')
From = 'noreply@delhivery.com'
To = 'ankur.shishodia@delhivery.com, vipul.maheshwari@delhivery.com, vikram.khurana1@delhivery.com, akashdeep.verma@delhivery.com, himanshu.garg@delhivery.com, ankit.agarwal2@delhivery.com'
send_mail_boto.mail_send(From,To,Subject,text,[])






