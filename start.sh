#!/bin/sh
docker run \
	--name minecraft \
	--detach \
	--restart always \
	--publish 25565:25565 \
	--volume /var/docker/minecraft/infinity-skyblock/world:/ftb/world \
	--volume /var/docker/minecraft/infinity-skyblock/config:/config \
	--volume /var/docker/minecraft/infinity-skyblock/backups:/ftb/backups \
	foobert/ftb
