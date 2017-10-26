FROM ubuntu:16.04
MAINTAINER Zehuan Li
RUN apt-get update
RUN apt-get install -y net-tools wget curl netcat socat iputils-ping traceroute
RUN apt-get install -y vim python
RUN apt-get install -y build-essential gcc-multilib gdb
RUN apt-get install -y git-core
