#!/bin/sh

status=$(ufw status | grep Samba | grep -o -m 1 'ALLOW\|DENY')

if [ "$status" = 'DENY' ]; then
		echo " OFF"
elif [ "$status" = 'ALLOW' ]; then
		echo " ON"
fi
