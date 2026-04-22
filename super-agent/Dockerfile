FROM jenkins/inbound-agent:latest
LABEL maintainer="Wonderlic DevOps <DevOps@wonderlic.com>"

USER root

RUN \
	apt-get update && \
	RUNLEVEL=1 apt-get install -y --no-install-recommends docker.io docker-cli docker-buildx zstd g++ build-essential libsecret-1-0 python3-minimal psmisc uuid-runtime && \
	rm -rf /var/lib/apt/lists/*

RUN \
	curl -L https://github.com/bazelbuild/bazelisk/releases/download/v1.16.0/bazelisk-linux-amd64 --output /usr/bin/bazel && \
	chmod +x /usr/bin/bazel

RUN \
	printf '#!/bin/sh\nexit 0' | tee /usr/sbin/policy-rc.d && chmod +x /usr/sbin/policy-rc.d

RUN \
	groupmod -g 281 docker && \
	usermod -a -G docker jenkins

USER jenkins
