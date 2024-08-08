#!/bin/bash

# Deploys configs automatically from repo to local files

CONFIG_DIR=~/.config

echo "Pulling from github..."
git pull

echo "Deploying config files..."

cp -r configs/hypr/* $CONFIG_DIR/hypr/
cp -r configs/kitty/* $CONFIG_DIR/kitty/
cp -r configs/eww/* $CONFIG_DIR/eww/
cp -r configs/nvim/* $CONFIG_DIR/nvim/
cp -r configs/waybar/* $CONFIG_DIR/waybar
cp -r configs/evremap/* $CONFIG_DIR/evremap
cp configs/.bashrc ~/

echo "deployment complete!"
