#!/bin/bash

dwm_weather() {
    LOCATION='zhuhai'
    WeatherFile=$(date|awk -F"[ :]" '{print $1$2$3$5}')'.weather'

    if [ ! -e $WeatherFile ]; then
    # printf "%s" "$SEP1"
    rm *.weather
    echo "$(curl -x http://127.0.0.1:1089 -s wttr.in/$LOCATION?format=1)" > $WeatherFile
    # if [ "$IDENTIFIER" = "unicode" ]; then
    #     printf "%s" "$(curl -s wttr.in/$LOCATION?format=1)"
    # else
    #     printf "WEA %s" "$(curl -s wttr.in/$LOCATION?format=1 | grep -o "[0-9].*")"
    # fi
    # printf "%s\n" "$SEP2"
    fi
    echo $(cat $WeatherFile)
}
dwm_weather
