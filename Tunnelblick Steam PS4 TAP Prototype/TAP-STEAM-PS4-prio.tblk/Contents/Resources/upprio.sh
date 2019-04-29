#!/bin/bash

# Basically this sets the tap net at higher Priority than the hw device
# Which makes it usable for PS4 Remote Play as well.
# MYGAMEROUTERIP is the gateway of the net in which Steam server and PS4 reside.

MYGAMEROUTERIP=10.24.60.1
mydef=$(/sbin/route -n get default | grep 'gateway' | awk '{print $2}')

if [[ "$mydef" != "$MYGAMEROUTERIP" ]];then
    echo "$mydef" > /tmp/lastoriggw
    /bin/bash -c "sleep 5; /sbin/route change default '$mydef' -hopcount 4" &
    /bin/bash -c "sleep 5; /sbin/route change default $MYGAMEROUTERIP -hopcount 1" &
fi
