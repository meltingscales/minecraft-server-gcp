#!/usr/bin/env bash

# This downloads missing mods if we are running modded.

FILEURL=https://github.com/HenryFBP/minecraft-server-gcp/releases/download/monster-server-1.1.2-1.6.4/Monster-1.1.2-1.6.4Server.zip
FILENAME=Monster-1.1.2-1.6.4Server.zip

if [ ! -d ./mods/ ]; then
    echo "You lack dir ./mods/, downloading curseforge zip into this dir :)"

    if [ ! -f "${FILENAME}" ]; then
        curl -L $FILEURL --output $FILENAME

        unzip $FILENAME
    fi

else 
    echo "You already have mods, not downloading curseforge zip."
fi