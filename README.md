![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)


# Another [Gearbox](https://github.com/gearboxworks/) Docker container service - postgresql
This is the repository for the [postgresql](https://www.postgresql.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-postgresql?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-postgresql) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-postgresql?sort=semver) [![release-state](https://github.com/gearboxworks/docker-postgresql/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-postgresql/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags | Dockerfile |
| ------- | -------------- | -------------- | ----------- | ----------- | ---------- |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-10.12-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/10.12) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/10.12) | `10.12`, `10` | _([10.12/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/10/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-11.7-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/11.7) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/11.7) | `11.7`, `11` | _([11.7/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/11/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-12.2-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/12.2) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/12.2) | `12.2`, `12`, `latest` | _([12.2/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/12/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-9.4.26-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/9.4.26) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/9.4.26) | `9.4.26`, `9.4` | _([9.4.26/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/9.4/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-9.5.21-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/9.5.21) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/9.5.21) | `9.5.21`, `9.5` | _([9.5.21/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/9.5/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-9.6.17-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/9.6.17) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/9.6.17) | `9.6.17`, `9.6` | _([9.6.17/DockerfileRuntime](https://github.com/gearboxworks/docker-postgresql/blob/master/9.6/DockerfileRuntime))_ |



## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/)
framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.
You can either use it directly from DockerHub or GitHub.


## Method 1: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/postgresql-docker.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 2: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/postgresql` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name postgresql-latest --restart unless-stopped --network gearboxnet gearbox/postgresql:latest`

### Stopping
stop - Stop a Docker container.

`docker stop postgresql-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm postgresql-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name postgresql-latest --network gearboxnet gearbox/postgresql:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name postgresql-latest -i -t --network gearboxnet gearbox/postgresql:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

```
SSH_PORT="$(docker port postgresql-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

