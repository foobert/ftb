#!/bin/bash -e
[ -f modpacks^FTBInfinity^1_3_4^FTBInfinityServer.zip ] || wget http://www.creeperrepo.net/FTB2/modpacks%5EFTBInfinity%5E1_3_4%5EFTBInfinityServer.zip
if [ $(uname -s) = "Darwin" -a "x$DOCKER_HOST" = "x" ]; then
    echo Configuring boot2docker
    $(boot2docker shellinit)
fi

docker build -q -t foobert/ftb .
docker images | grep foobert/ftb
