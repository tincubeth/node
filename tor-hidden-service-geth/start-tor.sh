#!/bin/bash

# Reference: https://randywestergren.com/running-a-hidden-tor-service-with-docker-compose/

REGEX='\([0-9]*\)_TCP=tcp://\([0-9]\{1,3\}\.\)\{3\}\([0-9]\)\{1,3\}\:\([0-9]*\)'

env | grep -o $REGEX | sed -e "s/_TCP=tcp:\/\// /" -e "s/:/ /" | awk '{ printf "HiddenServicePort %s %s:%s\n", $1, $2, $3 }' >> /etc/torrc

/bin/get-tor-hostname &

/usr/local/bin/tor -f /etc/torrc

ls -al