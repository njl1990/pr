#!/bin/sh
docker stop natapp
docker rm natapp
docker run --name=natapp --link=nginx -d bowen/natapp "/usr/local/natapp/natapp" "-authtoken=32c8b293d4e68807" "-log=natapp.log" "-loglevel=INFO"
