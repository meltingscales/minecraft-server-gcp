#!/usr/bin/env bash

sudo apt-get install openjdk-17-jdk
sudo apt-get install screen
sudo apt-get install curl wget lynx

mkdir ~/minecraft
pushd ~/minecraft

git clone git@github.com:HenryFBP/minecraft-server-gcp.git

pushd ./minecraft-server-gcp

./startup.bash