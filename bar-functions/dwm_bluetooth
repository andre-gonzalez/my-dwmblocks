#!/bin/bash
dwm_bluetooth () {
		xm3=$(bluetoothctl info CC:98:8B:C1:5C:78 | sed -n '9p')
		redmi=$(bluetoothctl info 1C:52:16:D1:A1:9B | sed -n '9p')
		buds=$(bluetoothctl info 1C:52:16:D1:A1:9B | sed -n '9p')
		BATTERY=$(bluetooth-headset-battery-level $(bluetoothctl info | awk '/^Device/ {print $2}')|
tail -c 5)
		if [ "$xm3" = "	Connected: yes" ]; then
						printf " XM3 %s" "$BATTERY"
		elif [ "$redmi" = "	Connected: yes" ]; then
						printf " Redmi %s" "$BATTERY"
		elif [ "$buds" = "	Connected: yes" ]; then
						printf " Buds+ %s" "$BATTERY"
		else
						printf ""
		fi

		printf "%s\n" "$SEP2"
}

dwm_bluetooth
