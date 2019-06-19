#!/bin/sh
mkdir -p /usr/local/pr

echo copy files...
cp -r ./web /usr/local/pr/web

echo startup...

# stop docker 
sudo docker stop pr.db
# rm docker 
sudo docker rm pr.db
# run docker 
sudo docker run --name=pr.db -p 0.0.0.0:27017:27017 -v /usr/local/pr/data/db:/data/db -d mongo