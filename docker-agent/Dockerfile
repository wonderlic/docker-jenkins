FROM jenkins/inbound-agent:latest
LABEL maintainer="Wonderlic DevOps <DevOps@wonderlic.com>"

USER root

RUN \
	apt-get update && \
	RUNLEVEL=1 apt-get install -y --no-install-recommends docker.io && \
	rm -rf /var/lib/apt/lists/*

RUN \
  printf '#!/bin/sh\nexit 0' | tee /usr/sbin/policy-rc.d && chmod +x /usr/sbin/policy-rc.d

RUN \
	groupmod -g 281 docker && \
	usermod -a -G docker jenkins

USER jenkins
