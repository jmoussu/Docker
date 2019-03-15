FROM ubuntu:16.04

RUN apt-get update -y
RUN	apt-get upgrade -y 
RUN	apt-get install -y ca-certificates openssh-server wget
#timezone
RUN apt install -y tzdata 

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh && apt-get install -y gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && echo finish && /bin/bash

# Utiliser la VM Char avec 4Go de Ram et 4 Core CPU
# docker build -t build03 .
# docker run --name dock03 -it --rm -p 8080:80 -p 8022:22 -p 8443:443 build03
# http://192.168.99.100:8080
