#!/bin/sh
/opt/opendaylight/bin/start
sleep 15
/opt/opendaylight/bin/client
tail -f /dev/null
