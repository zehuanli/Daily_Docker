FROM ubuntu:latest
MAINTAINER Zehuan Li
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y net-tools wget curl socat iputils-ping traceroute lsof zip
RUN apt-get install -y vim python3-dev python3-setuptools python3-pip
RUN apt-get install -y build-essential gcc-multilib gdb
RUN apt-get install -y git-core
RUN apt-get install -y nmap

RUN cd ~ && git clone https://github.com/darkoperator/dnsrecon.git \
    && git clone https://github.com/ChrisTruncer/EyeWitness.git \
    && git clone https://github.com/SpiderLabs/Responder.git \
    && git clone --depth 1 https://github.com/drwetter/testssl.sh.git

EXPOSE 389:389/tcp 1433:1433/tcp 80:80/tcp 139:139/tcp 445:445/tcp 21:21/tcp 3141:3141/tcp 24:24/tcp 110:110/tcp 587:587/tcp
EXPOSE 137:137/udp 138:138/udp 53:53/udp 389:389/udp 5553:5553/udp

