#/bin/bash


#ifconfig ovs-br1 172.21.0.10 netmask 255.255.255.0 up

#ovs-docker add-port ovs-br1 eth1 mininet --ipaddress=172.21.0.3/24
ovs-docker add-port ovs-br1 eth1 open_day_light --ipaddress=172.21.0.2/24
ovs-docker add-port ovs-br1 eth1 rtmp_server --ipaddress=172.21.0.4/24
ovs-docker add-port ovs-br1 eth1 stream_server --ipaddress=172.21.0.5/24
#ovs-vsctl add-port ovs-br1 ens37
#ovs-vsctl set bridge ovs-br1 protocols=OpenFlow13
#ovs-vsctl set-controller ovs-br1 tcp:172.21.0.2
