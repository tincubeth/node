#!/bin/bash

# Reference: https://randywestergren.com/running-a-hidden-tor-service-with-docker-compose/

HOSTNAME='/var/lib/tor/hidden-service/hostname'

while [ ! -f $HOSTNAME ]; do sleep 1; done

echo 'Your onion address is' $(cat $HOSTNAME)
