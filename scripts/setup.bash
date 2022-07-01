#!/usr/bin/env bash

MC_VERSION=1.19

sudo apt-get install openjdk-17-jdk
sudo apt-get install screen
sudo apt-get install curl wget lynx

mkdir ~/minecraft
pushd ~/minecraft
wget -O "minecraft_server.${MC_VERSION}.jar" https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar
echo "eula=true" > eula.txt #hahahah....this is ILLEGAL >;3c

ls -lash
pwd

java -jar "minecraft_server.${MC_VERSION}.jar"

