from django.contrib import admin
from django.urls import include, path

urlpatterns = [
	path('pr/',include('pr.urls')),
	path('olympic/',include('olympic.urls')),
]