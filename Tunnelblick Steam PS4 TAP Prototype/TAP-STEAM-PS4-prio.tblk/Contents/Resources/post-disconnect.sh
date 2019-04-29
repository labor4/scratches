#!/bin/bash

# Default Gateway will be gone after disconnect.
# This will reset it to the previous one.

if [ -f /tmp/lastoriggw ];then
    myprevdef=$(cat /tmp/lastoriggw| tr -d '\n')
    /bin/bash -c "sleep 5;/sbin/route add default $myprevdef;" &
    rm -f /tmp/lastoriggw
fi


