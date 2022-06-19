#!/bin/sh

interface=$(ip addr | awk '/state UP/ {gsub(":","");print $2}' | head -n 1)
status=$(iwctl station $interface show | grep State | grep -o 'connected\|disconnected')
wired=$(ip -s link show enp2s0 | grep -c 'state UP')

if [ "$status" = "connected" ]; then
		network=$(iwctl station wlan0 show | grep -Po 'Connected network \K.*' | awk '{$1=$1;print}')
		strength=$(iw dev "$interface" link | awk '/signal/ {gsub("-",""); print $2}')
		echo " ""$network""$strength%"
elif [ "$wired" = 1 ]; then
		echo " Ethernet"
else
		echo " OFFLINE"
fi
