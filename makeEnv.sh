#under writing

yum install -y centos-release-openstack-ocata
yum install openvswitch
systemctl enable openvswitch
systemctl start openvswitch


cd /usr/bin
wget https://raw.githubusercontent.com/openvswitch/ovs/master/utilities/ovs-docker
chmod a+rwx ovs-docker

ovs-vsctl add-br ovs-br1
ovs-vsctl set bridge ovs-br1 protocols=OpenFlow13
ifconfig ovs-br1 172.21.0.1 netmask 255.255.255.0 up
