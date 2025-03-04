#!/bin/bash

echo "newmode"
xrandr --newmode "1920x1080_70.00"  204.25  1920 2056 2256 2592  1080 1083 1088 1127 -hsync +vsync
echo "addmode"
xrandr --addmode HDMI-1 1920x1080_70.00
echo "output"
xrandr --output HDMI-1 --mode "1920x1080_70.00"
