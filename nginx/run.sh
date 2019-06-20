#!/bin/sh
docker run -d -p 0.0.0.0:80:80 -v /usr/local/nginx/nginx.conf:/etc/nginx/nginx.conf nginx
