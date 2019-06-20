#!/bin/sh
docker stop natapp
docker rm natapp
docker rmi bowen/natapp
docker build -t bowen/natapp .

