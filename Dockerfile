FROM jenkins:1.596
MAINTAINER Wonderlic DevOps <DevOps@wonderlic.com>

RUN apt-get update && apt-get install -y bzip2
