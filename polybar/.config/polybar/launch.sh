#! /bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top &

if [[ $(xrandr -q | grep 'HDMI-0 connected') ]]; then
	echo "entra al if"
	polybar top_external &
fi

