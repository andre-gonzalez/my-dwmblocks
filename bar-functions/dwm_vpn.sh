#!/bin/sh

# A dwm_bar function to show VPN connections with OpenVPN or WireGuard (if any are active)
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: pritunl-client

dwm_vpn () {
		ACTIVE=`pritunl-client list | grep -c 'Active'`

		if [ "$ACTIVE" -ge 1 ]; then
			IP=`pritunl-client list | grep -E -o "([0-9]{1,3}[\\.]){3}[0-9]{1,3}" | head -n 1`
			printf "🔒 %s" "$IP"
    fi
}

dwm_vpn
