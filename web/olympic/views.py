from django.http import HttpResponse
from django.shortcuts import render
from django.core import serializers
from django.template import loader
from bson.objectid import ObjectId
from bson import json_util
from pymongo import MongoClient
import time

def Index(request):
    context = {'context':'context'}
    return render(request, 'Olympic.html', context)
