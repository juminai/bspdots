#!/usr/bin/env sh

#pkill polybar
#polybar -r sauce &
#polybar -r yosemite &


if ! pgrep -x polybar; then
#    polybar -c ~/.config/polybar/config.ini top &
    polybar -c ~/.config/polybar/config.ini bottom &
else
    # Kill prev polybar session
    pkill -USR1 polybar
fi
