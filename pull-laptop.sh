#!/bin/bash

# Pulls config files from local directories (like ~/.config/hypr) and copies it to git repo
# without manually having to copy files from configs-laptop

HOME_DIR=~/
CONFIG_DIR=~/.config

echo "Syncing config files..."

cp -r $CONFIG_DIR/hypr/* configs-laptop/hypr/
cp -r $CONFIG_DIR/kitty/* configs-laptop/kitty/
cp -r $CONFIG_DIR/eww/* configs-laptop/eww/
cp -r $CONFIG_DIR/nvim/* configs-laptop/nvim/
cp -r $CONFIG_DIR/evremap/* configs-laptop/evremap/
cp -r $CONFIG_DIR/waybar/* configs-laptop/waybar/
cp $HOME_DIR/.bashrc configs-laptop/

echo "Sync complete!"
