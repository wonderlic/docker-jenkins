FROM jenkins/jenkins:lts

USER root

RUN \
	apt-get update && \
	apt-get install -y --no-install-recommends zstd g++ build-essential && \
	rm -rf /var/lib/apt/lists/*

USER jenkins
