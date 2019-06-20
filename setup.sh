#!/bin/sh
mkdir -p /usr/local/pr

echo copy files...
cp -r ./web /usr/local/pr/web

echo startup...

# stop docker 
sudo docker stop pr.db
sudo docker stop pr.web
# rm docker 
sudo docker rm pr.db
sudo docker rm pr.web
# run docker 
sudo docker run --name=pr.db -p 0.0.0.0:27017:27017 -v /usr/local/pr/data/db:/data/db -d mongo
sudo docker run --name=pr.web -p 0.0.0.0:80:8888 -v /usr/local/pr/web:/data/web -d 