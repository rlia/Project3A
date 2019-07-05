FROM centos:latest

MAINTAINER Rlia


RUN yum install -y epel-release
RUN yum -y update

RUN yum -y install git

# install openvswitch
RUN yum install -y centos-release-openstack-ocata
RUN yum install -y openvswitch
# install mininet 
RUN git clone https://github.com/rlia/mininet.git
RUN pwd
WORKDIR /mininet
RUN util/install.sh -nf

