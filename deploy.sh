#!/bin/bash

# Deploys configs automatically from repo to local files

CONFIG_DIR=~/.config

echo "Deploying config files..."

cp -r hypr/* $CONFIG_DIR/hypr/
cp -r kitty/* $CONFIG_DIR/kitty/
cp -r eww/* $CONFIG_DIR/eww/ 
cp -r nvim/* $CONFIG_DIR/nvim/

echo "deployment complete!"
