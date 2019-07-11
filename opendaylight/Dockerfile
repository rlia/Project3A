FROM centos:latest


MAINTAINER Rlia

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk
RUN yum install -y epel-release
RUN yum -y update

RUN curl -LkvOf http://cbs.centos.org/repos/nfv7-opendaylight-81-release/x86_64/os/Packages/opendaylight-8.1.0-1.el7.noarch.rpm
RUN yum -y install opendaylight-8.1.0-1.el7.noarch.rpm
#RUN systemctl start opendaylight
#RUN systemctl enable opendaylight

EXPOSE 8181
EXPOSE 6653
RUN /opt/opendaylight/bin/start; /opt/opendaylight/bin/client -r 7 "feature:install odl-dlux-core odl-dluxapps-nodes odl-dluxapps-topology odl-dluxapps-yangui odl-dluxapps-yangvisualizer odl-dluxapps-yangman odl-l2switch-switch odl-mdsal-apidocs odl-l2switch-hosttracker"

COPY ./opendaylight/entrypoint.sh /usr/local/bin
ENTRYPOINT entrypoint.sh
