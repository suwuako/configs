#!/bin/bash

# Pulls config files from local directories (like ~/.config/hypr) and copies it to git repo
# without manually having to copy files from configs

HOME_DIR=~/
CONFIG_DIR=~/.config

echo "Syncing config files..."

cp -r $CONFIG_DIR/hypr/* configs/hypr/
cp -r $CONFIG_DIR/kitty/* configs/kitty/
cp -r $CONFIG_DIR/eww/* configs/eww/
cp -r $CONFIG_DIR/nvim/* configs/nvim/
cp -r $CONFIG_DIR/evremap/* configs/evremap/
cp -r $CONFIG_DIR/waybar/* configs/waybar/
cp $HOME_DIR/.bashrc .

echo "Sync complete!"
