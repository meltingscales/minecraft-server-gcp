#!/usr/bin/env bash

FILEURL=https://github.com/HenryFBP/minecraft-server-gcp/archive/refs/tags/Monster-1.1.2-1.6.4Server.zip.zip
FILENAME=Monster-1.1.2-1.6.4Server.zip

if [ ! -d mods/ ]; then
    echo "You lack mods/, downloading curseforge zip into this dir :)"

    curl $FILEURL -o $FILENAME

    Monster-1.1.2-1.6.4.zip

else 
    echo "You already have mods, not downloading curseforge zip."
fi