#!/bin/bash

nebula_ip=$((ifconfig nebula1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p'))
echo $nebula_ip 
echo "NEBULA_IP=$nebula_ip" > .nebula
