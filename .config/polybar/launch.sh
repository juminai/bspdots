#!/usr/bin/env sh

if ! pgrep -x polybar; then
    polybar -c ~/.config/polybar/config.ini weather &
    polybar -c ~/.config/polybar/config.ini spotify &
    polybar -c ~/.config/polybar/config.ini bspwm &
    polybar -c ~/.config/polybar/config.ini time &
    polybar -c ~/.config/polybar/config.ini memory &
    polybar -c ~/.config/polybar/config.ini pulseaudio &
else
    pkill -USR1 polybar
fi
