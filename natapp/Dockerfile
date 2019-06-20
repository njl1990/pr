FROM alpine
MAINTAINER bowen
RUN ["mkdir -p /usr/local/natapp"]
RUN ["wget","http://download.natapp.cn/assets/downloads/clients/2_3_9/natapp_linux_amd64_2_3_9.zip"]
RUN ["unzip","natapp_linux_amd64_2_3_9.zip"]
RUN ["mv","natapp","/usr/local/natapp/natapp"]
RUN ["chmod","777","/usr/local/natapp/natapp"]
RUN ["rm","natapp_linux_amd64_2_3_9.zip"]
ENTRYPOINT ["/usr/local/natapp/natapp -authtoken=32c8b293d4e68807 -log=/var/logs/natapp.log -loglevel= INFO"]
