# building

    docker build ./ --tag=henryfbp/ftb-monster-112164:latest --progress=plain --no-cache 

# test

    docker run --interactive --tty henryfbp/ftb-monster-112164:latest --publish 25565:25565

# push

    docker push henryfbp/ftb-monster-112164