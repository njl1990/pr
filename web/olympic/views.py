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

def HsytYY1(request):
    context = {'context':'context'}
    return render(request, 'hstr-yy1.html', context)

def LoadPreData(request):
	mongoClient = MongoClient('pr.db',27017)
	DBClient = mongoClient['olympicdb']
	collection = DBClient['predata']
	result=collection.find({})
	context = {
		'title':'',
		'datetime':'',
		'content':'',
		'lcoation':'',
		}
	for item in result:
		if item['key'] == 'title':
			context['title']=item['value']
		if item['key'] == 'datetime':
			context['datetime']=item['value']
		if item['key'] == 'content':
			context['content']=item['value']
		if item['key'] == 'lcoation':
			context['lcoation']=item['value']
	return HttpResponse(json_util.dumps(context))