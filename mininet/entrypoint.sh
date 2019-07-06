#!/usr/bin/env /bin/bash


service openvswitch-switch start
ovs-vsctl set-manager ptcp:6640
mn --controller=remote,ip=127.0.0.1,port=6653

#tail -f /dev/null
bash
