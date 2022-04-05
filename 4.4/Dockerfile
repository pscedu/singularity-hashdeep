FROM debian:latest

LABEL "MAINTAINER"="icaoberg"
LABEL "EMAIL"="icaoberg@psc.edu"
LABEL "SUPPORT"="help@psc.edu"
LABEL "REPOSITORY"="http://github.com/pscedu/singularity-hashdeep"
LABEL "COPYRIGHT"="Copyright © 2021-2022 Pittsburgh Supercomputing Center. All Rights Reserved."
LABEL "VERSION"="4.4"

RUN apt update && \
	apt install -y build-essential unzip autoconf wget gcc && \
	cd /tmp && \
	wget https://github.com/jessek/hashdeep/archive/refs/tags/v4.4.zip && \
	unzip v4.4.zip && rm -f v4.4.zip && \
	cd hashdeep-4.4 && \
	sh ./bootstrap.sh && \
	./configure && \
	make && \
	make install
