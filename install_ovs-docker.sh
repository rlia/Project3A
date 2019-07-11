#/bin/bash



wget http://raw.githubusercontent.com/openvswitch/ovs/master/utilities/ovs-docker
chmod a+rwx ovs-docker

ovs-vsctl add-br ovs-br1

