#!/bin/bash

#mkdir -p ./postgresql_data;
#chown -R 1001:1001 ./postgresql_data;

$nebula_ip=$(ifconfig nebula1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')
echo $nebula_ip
export NEBULA_IP=$nebula_ip



