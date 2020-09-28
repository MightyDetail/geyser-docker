# geyser-docker

[GeyserMC](https://github.com/GeyserMC/Geyser/) Minecraft bedrock <> java proxy translator in a docker container.

`docker pull ghcr.io/anthr76/geyser-docker:latest`

### Usage

See example [docker-compose.yml](https://github.com/anthr76/geyser-docker/blob/master/docker-compose.yml) file or pull the container.

This container is built with Linuxserver.io's [lsiobase](https://fleet.linuxserver.io/?key=13:lsiobase) images. Many thanks to them <3.

##### TODO
- ~~Test with lsio alpine base images for lighter weight~~
- Attach to stdin to run /geyser commands
- Possibly publish to docker hub
- ~~Test new s6-overlay images and explore feasibility of running true rootless with podman~~
- Add health checks
- Add environment variables
- Proper pipeline at some point?
