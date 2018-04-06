FROM ubuntu:latest
MAINTAINER Zehuan Li
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y net-tools wget curl socat iputils-ping traceroute lsof zip
RUN apt-get install -y vim python3-dev python3-setuptools python3-pip
RUN apt-get install -y build-essential gcc-multilib gdb
RUN apt-get install -y git-core
RUN apt-get install -y nmap

RUN cd ~
RUN git clone https://github.com/darkoperator/dnsrecon.git
RUN git clone https://github.com/ChrisTruncer/EyeWitness.git
RUN git clone https://github.com/SpiderLabs/Responder.git
RUN git clone --depth 1 https://github.com/drwetter/testssl.sh.git
