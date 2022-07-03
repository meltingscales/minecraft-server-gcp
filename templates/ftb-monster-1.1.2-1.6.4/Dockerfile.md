TODO fix port issue? Is this due to Docker or something else??

# building

    docker build ./ --tag=henryfbp/ftb-monster-112164:latest --progress=plain --no-cache 

# test

note: `docker volume` and `--mount` is necessary to save your changes to the MC server's world if you Docker Container shuts down.

    docker volume create ftb-monster-112164-volume

    docker volume inspect ftb-monster-112164-volume

    docker run --interactive --tty -p 25565:25565 --mount source=ftb-monster-112164-volume,destination=/minecraft/ henryfbp/ftb-monster-112164:latest

# push

    docker push henryfbp/ftb-monster-112164