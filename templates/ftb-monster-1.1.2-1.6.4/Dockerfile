FROM    ubuntu:22.04

# NOTE: This is just for versioning internally, LABEL does not actually version Containers.
LABEL   version="ftb-monster-112164:latest"

RUN     apt-get update

WORKDIR /tmp/

RUN     git clone https://github.com/HenryFBP/minecraft-server-gcp.git
WORKDIR /tmp/minecraft-server-gcp/
RUN     bash ./scripts/setup-apt-deps.bash
RUN     bash ./scripts/setup-java-ancient.bash

RUN     mkdir /minecraft/

WORKDIR /minecraft/

ADD     ./bootstrap.bash /minecraft/

RUN     bash ./bootstrap.bash

EXPOSE  25565

ENTRYPOINT [ \
    "/opt/java/jdk1.7.0_80/bin/java",\
    "-Xms2048m",\
    "-XX:PermSize=256m",\
    "-jar",\
    "FTBServer-1.6.4-965.jar",\
    "nogui" ]