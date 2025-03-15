#!/bin/bash
set -eu

WALL=$1
echo "setting $WALL as wallpaper"
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper ", $WALL"
echo "set $WALL as wallpaper sucessfuly"
