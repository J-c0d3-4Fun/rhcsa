#!/bin/bash

echo


a=$(nmcli -t -f NAME c show --active)

if [[ -n "$a" ]]; then
        echo " $(echo "$a" | head -n 1)"
else
        echo "no devices found"
fi

