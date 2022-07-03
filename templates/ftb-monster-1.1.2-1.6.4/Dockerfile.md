TODO fix port issue? Is this due to Docker or something else??

# building

    docker build ./ --tag=henryfbp/ftb-monster-112164:latest --progress=plain --no-cache 

# test

    docker run --interactive --tty -p 25565:25565 henryfbp/ftb-monster-112164:latest

# push

    docker push henryfbp/ftb-monster-112164