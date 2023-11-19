from django.contrib import admin
from django.urls import path
from first_app import views

urlpatterns = [
    path('', views.home, name='index'),
    path('submit/', views.submit, name='submit')
]
