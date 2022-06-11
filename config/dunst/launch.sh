#!/bin/bash
pkill dunst
dunst -config ~/.config/dunst/dunstrc &

dunstify -u critical "Test message" "critical test 1"
dunstify -u normal "Test message" "normal test 2"
dunstify -u low "Test message" "low test 3"
