FROM alpine
MAINTAINER bowen
RUN ["mkdir","-p","/usr/local/natapp"]
RUN ["wget","http://download.natapp.cn/assets/downloads/clients/2_3_9/natapp_linux_amd64_2_3_9.zip"]
RUN ["unzip","natapp_linux_amd64_2_3_9.zip"]
RUN ["mv","natapp","/usr/local/natapp/natapp"]
RUN ["chmod","777","/usr/local/natapp/natapp"]
RUN ["rm","natapp_linux_amd64_2_3_9.zip"]
RUN ["mkdir","-p","/var/logs/natapp/"]
ADD grepport.sh /grepport.sh
RUN ["chmod","777","/grepport.sh"]

