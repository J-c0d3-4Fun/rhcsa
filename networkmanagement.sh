#!/bin/bash

echo


a=$(nmcli -t -f NAME c show --active)

if [[ -n "$a" ]]; then
        echo "The first device is $(echo "$a" | head -n 1)"
	if [[ $1 -eq 0 ]]; then
        	echo
        	echo "What IP address would you like to add?"
        	read b
        	nmcli c modify  $(echo "$a" | head -n 1) ipv4.addresses "$b"
	else
        	echo "invalid input"
	fi

else
        echo "no devices found"
fi





