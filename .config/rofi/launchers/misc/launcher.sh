#!/usr/bin/env bash

## Author  : Aditya Shakya
theme="screen"
dir="$HOME/.config/rofi/launchers/misc"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
