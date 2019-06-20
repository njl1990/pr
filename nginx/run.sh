#!/bin/sh
docker stop nginx
docker rm nginx
docker run -d --link=pr.lgl  -p 0.0.0.0:80:80 -v /usr/local/nginx/nginx.conf:/etc/nginx/nginx.conf --name=nginx nginx
