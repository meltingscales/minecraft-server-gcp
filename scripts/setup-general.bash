#!/usr/bin/env bash

sudo apt-get install screen
sudo apt-get install curl wget lynx
sudo apt-get install unzip

mkdir ~/minecraft

pushd ~/minecraft

git clone https://github.com/HenryFBP/minecraft-server-gcp.git
