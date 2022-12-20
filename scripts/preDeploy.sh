#!/bin/bash

echo "predeploy"
#nebula_ip=$((ifconfig nebula1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p'))
nebula_ip=$(/sbin/ip -o -4 addr list nebula1 | awk '{print $4}' | cut -d/ -f1)
echo $nebula_ip 
echo "NEBULA_IP=$nebula_ip" > .nebula
