#!/bin/sh

## netupdown, small script to connect disconnect network through dmenu in OpenBSD.
## In order to work, the user needs to be able to run the specific ifconfig command
## without a password by adding the following lines to /etc/doas.conf:
##
## permit nopass <username> as root cmd /sbin/ifconfig args <interface> up
## permit nopass <username> as root cmd /sbin/ifconfig args <interface> down

CHOICE=$(printf '%s\n' "Up" "Down" | dmenu -p network)

case "$CHOICE" in
	Up) doas /sbin/ifconfig iwn0 up ;;
	Down) doas /sbin/ifconfig iwn0 down ;;
esac
