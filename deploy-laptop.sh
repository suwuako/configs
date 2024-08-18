#!/bin/bash

# Deploys configs-laptop automatically from repo to local files

CONFIG_DIR=~/.config

echo "Pulling from github..."
git pull

echo "Deploying config files..."

cp -r configs-laptop/hypr/* $CONFIG_DIR/hypr/
cp -r configs-laptop/kitty/* $CONFIG_DIR/kitty/
cp -r configs-laptop/eww/* $CONFIG_DIR/eww/
cp -r configs-laptop/nvim/* $CONFIG_DIR/nvim/
cp -r configs-laptop/waybar/* $CONFIG_DIR/waybar
cp -r configs-laptop/evremap/* $CONFIG_DIR/evremap
cp -r wallpapers/in-use-hyprland/* $CONFIG_DIR/wallpapers
cp configs-laptop/.bashrc ~/

echo "deployment complete!"
