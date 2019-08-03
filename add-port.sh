#/bin/bash


#ifconfig ovs-br1 172.21.0.10 netmask 255.255.255.0 up
ovs-vsctl add-br ovs-br1
ovs-vsctl set bridge ovs-br1 protocols=OpenFlow13
ovs-vsctl set-controller ovs-br1 tcp:172.21.0.2
ifconfig ovs-br1 172.21.0.11 netmask 255.255.255.0 up

ovs-vsctl add-br ovs-br2
ovs-vsctl set bridge ovs-br2 protocols=OpenFlow13
ovs-vsctl set-controller ovs-br2 tcp:172.21.0.2
ifconfig ovs-br1 172.21.0.12 netmask 255.255.255.0 up

ovs-vsctl add-br ovs-br3
ovs-vsctl set bridge ovs-br3 protocols=OpenFlow13
ovs-vsctl set-controller ovs-br3 tcp:172.21.0.2
ifconfig ovs-br1 172.21.0.13 netmask 255.255.255.0 up

ovs-vsctl add-br ovs-br4
ovs-vsctl set bridge ovs-br4 protocols=OpenFlow13
ovs-vsctl set-controller ovs-br4 tcp:172.21.0.2
ifconfig ovs-br1 172.21.0.14 netmask 255.255.255.0 up


ovs-vsctl add-port ovs-br1 patch1-2 -- set interface patch1-2 type=patch options:peer=patch2-1
ovs-vsctl add-port ovs-br1 patch1-3 -- set interface patch1-3 type=patch options:peer=patch3-1

ovs-vsctl add-port ovs-br2 patch2-1 -- set interface patch2-1 type=patch options:peer=patch1-2
ovs-vsctl add-port ovs-br2 patch2-4 -- set interface patch2-4 type=patch options:peer=patch4-2

ovs-vsctl add-port ovs-br3 patch3-1 -- set interface patch3-1 type=patch options:peer=patch1-3
ovs-vsctl add-port ovs-br3 patch3-4 -- set interface patch3-4 type=patch options:peer=patch4-3

ovs-vsctl add-port ovs-br4 patch4-2 -- set interface patch4-2 type=patch options:peer=patch2-4
ovs-vsctl add-port ovs-br4 patch4-3 -- set interface patch4-3 type=patch options:peer=patch3-4

#ovs-docker add-port ovs-br1 eth1 mininet --ipaddress=172.21.0.3/24
ovs-docker add-port ovs-br1 eth1 open_day_light --ipaddress=172.21.0.2/24
ovs-docker add-port ovs-br1 eth1 rtmp_server --ipaddress=172.21.0.4/24
ovs-docker add-port ovs-br1 eth1 stream_server --ipaddress=172.21.0.5/24
#ovs-vsctl add-port ovs-br1 ens37
#ovs-vsctl set bridge ovs-br1 protocols=OpenFlow13
#ovs-vsctl set-controller ovs-br1 tcp:172.21.0.2
