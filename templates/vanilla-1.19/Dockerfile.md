# building

    docker build ./ --tag=henryfbp/vanilla-1.19:latest --progress=plain --no-cache 

# test

note: `docker volume` and `--mount` is necessary to save your changes to the MC server's world if your Docker Container shuts down.

    docker volume create vanilla-1.19-volume

    docker volume inspect vanilla-1.19-volume

    docker run --interactive --tty -p 25565:25565 --mount source=vanilla-1.19-volume,destination=/minecraft/ henryfbp/vanilla-1.19:latest

# push

    docker push henryfbp/vanilla-1.19
