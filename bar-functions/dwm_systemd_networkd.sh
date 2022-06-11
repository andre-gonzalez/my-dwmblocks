#!/bin/sh

interface=$(ip addr | awk '/state UP/ {gsub(":","");print $2}' | head -n 1)
status=$(iwctl station $interface show | grep State | grep -o 'connected\|disconnected')
network=$(iwctl station wlan0 show | grep -Po 'Connected network \K.*' | awk '{$1=$1;print}')
strength=$(iw dev "$interface" link | awk '/signal/ {gsub("-",""); print $2}')

case $status in
		"connected")
				echo " ""$network" "$strength%"
		;;
		*)
				echo " " "OFFLINE"
		;;
esac
