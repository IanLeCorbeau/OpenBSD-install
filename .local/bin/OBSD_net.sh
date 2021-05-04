#!/bin/sh

## ONSD_net, small shell script to monitor the network connection state on OpenBSD, used with slstatus or dwmblocks.
## Usage: <path/to/script> <network interface to monitor> (ex: em0)

INTERFACE=$1
NETSTATE="$(ifconfig | grep "$INTERFACE" | awk '{ print $2 }' | cut -f2 -d '<' | cut -f1 -d ',')"

if [ -z "$1" ]; then
	printf '%s\n' "You need to provide an interface name as arg 1. (ex: em0)"
else
	if [ "$NETSTATE" = UP ]; then
		printf '%s\n' "up"
	else
		printf '%s\n' "down"
	fi
fi
