#!/bin/sh

docker stop pr.lgl

docker rm pr.lgl

docker run -d --name=pr.lgl --publish 8443:443 --publish 8899:80 --publish 2222:22 --restart always --volume /home/bowen/pr/data/gitlab/config:/etc/gitlab --volume /home/bowen/pr/data/gitlab/logs:/var/log/gitlab --volume /home/bowen/pr/data/gitlab/data:/var/opt/gitlab --volume /home/bowen/pr/natapp:/natapp gitlab/gitlab-ce

