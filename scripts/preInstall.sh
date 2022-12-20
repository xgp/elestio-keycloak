#!/bin/bash

mkdir -p ./keycloak_data;
chown -R 1000:1000 ./keycloak_data;

nebula_ip=$((ifconfig nebula1 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p'))
echo $nebula_ip
export NEBULA_IP=$nebula_ip
