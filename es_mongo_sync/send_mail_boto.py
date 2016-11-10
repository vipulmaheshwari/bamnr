from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart

from os.path import basename
import boto.ses

def mail_send(send_from, send_to, subject, text, files):
# via http://codeadict.wordpress.com/2010/02/11/send-e-mails-with-attachment-in-python/
    msg = MIMEMultipart()
    msg['Subject'] = subject
    msg['From'] = send_from
    msg['To'] = send_to
    print msg['To']
# what a recipient sees if they don't use an email reader
    msg.preamble = 'Multipart message.\n'

# the message body
    part = MIMEText(text)
    msg.attach(part)

# the attachment
    for f in files or []:
        print f
        with open(f, "rb") as fil:
            msg.attach(MIMEApplication(
                fil.read(),
                Content_Disposition='attachment; filename="%s"' % basename(f),
                Name=basename(f)
            ))

# connect to SES
    connection = boto.ses.connect_to_region(
             'us-east-1',
             aws_access_key_id='AKIAJ2KIRNRHBB3LS6XA',
             aws_secret_access_key='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')


# and send the message
    rec = msg['To'].split(", ")
    result = connection.send_raw_email(msg.as_string()
    , source=msg['From']
    , destinations=rec)
