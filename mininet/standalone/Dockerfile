FROM ubuntu:18.04

MAINTAINER Rlia

USER root
WORKDIR /root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    iproute2 \
    iputils-ping \
    mininet \
    net-tools \
    openvswitch-switch \
    openvswitch-testcontroller \
    tcpdump \
    vim \
    x11-xserver-utils \
    xterm \
 && rm -rf /var/lib/apt/lists/* 
EXPOSE 6633 6653 6640

COPY entrypoint.sh /usr/local/bin
ENTRYPOINT entrypoint.sh

