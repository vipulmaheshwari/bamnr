import sys

#*********************************************************************************#
#This Module for upload data file on S3#

expiry_time_in_hours = 72
def upload_s3(filepath,expiry_time_in_hours):
    file_list = filepath.split("/")
    filename = file_list[-1]
    expiry_time_in_seconds = 60*60*float(expiry_time_in_hours)
    from boto.s3.connection import S3Connection
    conn = S3Connection("AKIAJUYBBE4GQNVIDIGA", "0Ounw/PWxTs+ZR11tDgEgiPYflG3OdNA9YX+XeLu")
    b = conn.get_bucket("share.delhivery.com")
    k = b.new_key('bamnr/%s' % filename)
    k.set_contents_from_filename(filepath,headers={'Content-Type': 'application/csv',},replace=True,policy='authenticated-read',reduced_redundancy=True,)
    link= k.generate_url(expires_in = expiry_time_in_seconds, force_http = True)
    return link 
