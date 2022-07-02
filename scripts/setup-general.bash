#!/usr/bin/env bash

mkdir ~/minecraft

sudo apt-get install openjdk-17-jdk
sudo apt-get install screen
sudo apt-get install curl wget lynx

pushd ~/minecraft

git clone https://github.com/HenryFBP/minecraft-server-gcp.git
