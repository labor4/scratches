#!/bin/bash

# MYGAMEROUTERIP is the gateway of the net in which Steam server and PS4 reside.
# $trusted_ip is an ovpn env var

MYGAMEROUTERIP=10.24.60.1
mydef=$(/sbin/route -n get default | grep 'gateway' | awk '{print $2}')

if [[ "$mydef" != "$MYGAMEROUTERIP" ]];then
    echo "$mydef" > /tmp/lastoriggw
    /bin/bash -c "sleep 5; /sbin/route add $trusted_ip/32 '$mydef'" &
    /bin/bash -c "sleep 5; /sbin/route add 0/1 $MYGAMEROUTERIP" &
fi


