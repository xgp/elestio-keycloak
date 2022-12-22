#!/bin/bash

nebula_ip=$(/sbin/ip -o -4 addr list nebula1 | awk '{print $4}' | cut -d/ -f1)
echo "NEBULA_IP=$nebula_ip" > .nebula
echo "NEBULA_IP=$nebula_ip" >> .env
export NEBULA_IP=$nebula_ip
