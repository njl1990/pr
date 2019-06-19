#!/bin/sh

docker stop pr.lgl

docker rm pr.lgl

docker run -d --name=pr.lgl --publish 8443:443 --publish 8899:80 --publish 2222:22 --restart always --volume /usr/local/gitlab/config:/etc/gitlab --volume /usr/local/gitlab/logs:/var/log/gitlab --volume /usr/gitlab/data:/var/opt/gitlab gitlab/gitlab-ce

