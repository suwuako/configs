#!/bin/bash

xrandr --newmode "1920x1080_70.00"  204.25  1920 2056 2256 2592  1080 1083 1088 1127 -hsync +vsync
xrandr --addmode HDMI-1 1920x1080_70.00
xrandr --output HDMI-1 "1920x1080_70.00"
