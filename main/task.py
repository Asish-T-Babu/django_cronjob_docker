from django.conf import settings
from django.core.mail import send_mail

def send_daily_email():
    subject = 'welcome to GFG world'
    message = f'Hi Asish, thank you for registering in geeksforgeeks.'
    email_from = settings.EMAIL_HOST_USER
    recipient_list = ['asishtbabuf1@gmail.com', ]
    send_mail( subject, message, email_from, recipient_list )