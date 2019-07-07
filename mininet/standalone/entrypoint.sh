#!/usr/bin/env /bin/bash

service openvswitch-switch start
ovs-vsctl set-manager ptcp:6640
#mn --controller=remote,ip=172.20.0.2 --switch=ovsk,protocols=OpenFlow13
mn --controller=remote,ip=172.20.0.2,port=6653 --switch=ovsk,protocols=OpenFlow13
#tail -f /dev/null
#bash
