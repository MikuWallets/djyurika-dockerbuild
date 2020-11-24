# Dockerfile for Build DJ Yurika Image and Running Container

## Requirements
- Same network (djyurika calls DB by hostname)

## Docker Build Commands (`sudo` omitted)
- `docker build [dockerfile_dir] --tag [image_name]:[tag]`

## Docker Run Commands (`sudo` omitted)
### Create Network
- `docker network create [network_name] --subnet [network]/30`
### Run MariaDB
- `docker run -d --name [container_name] --hostname [container_name] --restart unless-stopped -p [port]:3306 --network [network_name] [image_name:tag]`
### Run Ubuntu
- `docker run -d --name [container_name] --hostname [container_name] --restart unless-stopped -p [port]:22 --network [network_name] -v [local_dir]:/home/djyurika [image_name:tag]`

## Start/Stop methods
### DB
- Just start/stop container
### Ubuntu
- Start/stop command of docker container
- command `service djyurika start/stop` in shell of container