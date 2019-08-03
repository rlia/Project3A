#/bin/bash


#ovs-docker del-port ovs-br1 eth1 mininet
ovs-docker del-port ovs-br1 eth1 open_day_light
ovs-docker del-port ovs-br1 eth1 rtmp_server
ovs-docker del-port ovs-br1 eth1 stream_server


#ovs-vsctl clear Bridge ovs-br1 ports
