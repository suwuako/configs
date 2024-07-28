#!/bin/bash

# Pulls config files from local directories (like ~/.config/hypr) and copies it to git repo
# without manually having to copy files from configs

HOME_DIR=~/
CONFIG_DIR=~/.config

echo "Syncing config files..."

cp -r $CONFIG_DIR/hypr/* hypr/
cp -r $CONFIG_DIR/kitty/* kitty/
cp -r $CONFIG_DIR/eww/* eww/
cp -r $CONFIG_DIR/nvim/* nvim/
cp -r $CONFIG_DIR/evremap/* evremap/
cp $HOME_DIR/.bashrc .

echo "Sync complete!"
