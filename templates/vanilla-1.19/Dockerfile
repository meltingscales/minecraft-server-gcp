FROM    ubuntu:22.04

# NOTE: This is just for versioning internally, LABEL does not actually version Containers.
LABEL   version="vanilla-1.19:latest"

RUN     apt-get update
RUN     apt-get install -y git

WORKDIR /tmp/

RUN     git clone https://github.com/HenryFBP/minecraft-server-gcp.git
WORKDIR /tmp/minecraft-server-gcp/
RUN     bash ./scripts/setup-apt-deps.bash
RUN     bash ./scripts/setup-java-new.bash

RUN     ls /opt/java/ -lash

RUN     mkdir /minecraft/

WORKDIR /minecraft/

ADD     ./banned-ips.json       ./
ADD     ./banned-players.json   ./
ADD     ./ops.json              ./
ADD     ./eula.txt              ./
ADD     ./server.properties     ./
ADD     ./whitelist.json        ./
ADD     ./usercache.json        ./
ADD     ./minecraft_server.1.19.jar        ./

ENTRYPOINT [ \
    "java",\
    "-jar",\
    "minecraft_server.1.19.jar",]