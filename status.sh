#!/bin/bash
while :; do
    cd ~/scripts
    xsetroot -name "| $(~/scripts/dwmbar-functions/dwm-inet.sh) | $(~/scripts/dwmbar-functions/dwm-weather.sh) | $(~/scripts/dwmbar-functions/dwm-time.sh) |"
    sleep 1s
done

