from django.shortcuts import render
from django.http import JsonResponse
from .task import send_daily_email

# Create your views here.
def index(request):
    # send_daily_email()
    return JsonResponse({'status': 'success', 'data': 'Hello World!'}, status= 200)