#!/usr/bin/env bash

sudo apt-get install openjdk-17-jdk
sudo apt-get install screen
sudo apt-get install curl wget lynx

mkdir ~/minecraft

pushd ~/minecraft

git clone https://github.com/HenryFBP/minecraft-server-gcp.git
