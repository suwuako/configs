#!/bin/bash

CONFIG_DIR=~/.config

echo "Syncing config files..."
cp $CONFIG_DIR/hypr/* hypr/
cp $CONFIG_DIR/kitty/* kitty/

