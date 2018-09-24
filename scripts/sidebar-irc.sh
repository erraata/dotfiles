#!/bin/sh

bspc rule -a konsole -o  state=floating sticky=on
konsole --profile "Profile 1" -e irssi &

sleep 2
wmctrl -i -r $(xdotool search --onlyvisible --name irssi) -e 0,2810,140,1020,385

bspc rule -a konsole -o state=floating sticky=on
konsole -e bash -c 'echo -ne "\033]30;rsstail\007" & ~/.local/bin/rsstail -i 120 --time-format "%H:%M" --format "\n{timestamp} {title}\n{link}\n" "https://www.reddit.com/.rss?feed=42ab441d0cc3222858984f6c93a52a3010616187&user=socopacetic" | clide -e "URL,fg=green,bg=black"' &

sleep 2
wmctrl -i -r $(xdotool search --onlyvisible --name rsstail) -e 0,2810,40,1020,90
