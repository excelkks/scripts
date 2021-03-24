#!/usr/bin/env bash
width=1440
height=810

cvt $width $height | tail -1 | cut -d ' ' -f2- | xargs xrandr --newmode
modename=$(cvt $width $height | tail -1 | cut -d'"' -f2)
output="$(xrandr | grep " connected " | head -1 | cut -d' ' -f1)"
xrandr --addmode $output $modename
xrandr --output $output --mode $modename
