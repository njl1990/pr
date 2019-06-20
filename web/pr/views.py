from django.http import HttpResponse
from django.shortcuts import render
from django.core import serializers
from django.template import loader
from bson.objectid import ObjectId
from bson import json_util
from pymongo import MongoClient
import time

def Index(request):
    HeartBeatList=[]
    #mongoClient = MongoClient('39.104.57.12',27017)
    mongoClient = MongoClient('pr.db',27017)
    DBClient = mongoClient['prdb']
    collection = DBClient['tHeartBeat']
    result=collection.find({})
    for item in result:
        HeartBeatList.append(item)
    context = {'HeartBeatList':HeartBeatList}
    print(context)
    return render(request, 'Index.html', context)

# API
## Load
def GetHeartBeat(request):
    HeartBeatList=[]
    #mongoClient = MongoClient('39.104.57.12',27017)
    mongoClient = MongoClient('pr.db',27017)
    DBClient = mongoClient['prdb']
    collection = DBClient['tHeartBeat']
    result=collection.find({})
    for item in result:
        HeartBeatList.append(item)
    context = {'HeartBeatList':HeartBeatList}
    print(context)
    return HttpResponse(json_util.dumps(context))

def HeartBeat(request):
    host=request.GET['host']
    naturl=request.GET['naturl']
    timestr=time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    HeartBeatData={
        'host':host,
        'timestr':timestr,
        'naturl':naturl,
    }
    #mongoClient = MongoClient('39.104.57.12',27017)
    mongoClient = MongoClient('pr.db',27017)
    DBClient = mongoClient['prdb']
    collection = DBClient['tHeartBeat']
    # Save or Update to DB
    collection.insert_one(HeartBeatData)
    context = {'result':'success'}
    print(context)
    return HttpResponse(json_util.dumps(context))
