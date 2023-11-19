from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Message
# Create your views here.

def home(request):
    return render(request, 'index.html')


def submit(request):
    if request.method == 'POST':
        new_message = request.POST.get('new_message')
        Message.objects.create(content=new_message)

    messages = {
        'msg':Message.objects.all()
    }
    return render(request, 'index.html', messages)

