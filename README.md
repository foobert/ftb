# Minecraft Server

Contains customized mod pack and docker file to easily deploy a minecraft server.

# Client Installation

- Download and run the [Feed the Beast Launcher](http://www.feed-the-beast.com/#download)
- Start FTB Launcher, Select FTB Infinity Evolved Skyblock 1.0.2 and start
- Grind away

# Server Installation

- Build the Docker image
- Run it a bit like this:

``` docker run --name minecraft \
    --detach --restart always \
    --publish 25565:25565 \
    --volume /somewhere/world:/ftb/world \
    --volume /somewhere/config:/config \
    foobert/ftb
```
