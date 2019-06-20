FROM 1stclass/docker-python3-django2-alpine-base
MAINTAINER bowen
RUN ["mkdir","-p","/usr/local/pr/web"]
COPY ./web /usr/local/pr/web
RUN ["pip","install","pymongo"]