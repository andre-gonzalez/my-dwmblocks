#!/bin/bash
dwm_bluetooth_battery () {
		STATUS=$(bluetoothctl info| sed -n '9p')
		BATTERY=$(bluetooth-headset-battery-level $(bluetoothctl info | awk '/^Device/ {print $2}')|
tail -c 5)
		if [ "$STATUS" = "	Connected: yes" ]; then
						printf "%s" "$BATTERY"
		fi

		printf "%s\n" "$SEP2"
}

dwm_bluetooth_battery
