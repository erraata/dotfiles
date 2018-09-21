#!/bin/sh

bspc rule -a Firefox -o  state=floating sticky=on
firefox -new-window  "https://youtube.com" &

sleep 4
wmctrl -i -r $(xdotool search --onlyvisible --name Firefox) -e 0,2810,1450,1020,700

bspc rule -a Firefox -o state=floating sticky=on
firefox -new-window "https://keep.google.com" &

sleep 2
wmctrl -i -r $(xdotool search --onlyvisible --name Keep) -e 0,2810,535,1020,905
