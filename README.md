![Gearbox](https://gearboxworks.github.io/assets/images/gearbox-logo.png)


# postgresql Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [postgresql](https://www.postgresql.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-postgresql?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-postgresql) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-postgresql?sort=semver) [![release-state](https://github.com/gearboxworks/docker-postgresql/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-postgresql/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-10.12-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/10.12)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/10.12)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | _([`10.12`, `10`](https://github.com/gearboxworks/docker-postgresql/blob/master/versions/10.12/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-11.7-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/11.7)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/11.7)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | _([`11.7`, `11`](https://github.com/gearboxworks/docker-postgresql/blob/master/versions/11.7/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-12.2-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/12.2)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/12.2)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | _([`12.2`, `12`, `latest`](https://github.com/gearboxworks/docker-postgresql/blob/master/versions/12.2/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-9.4.26-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/9.4.26)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/9.4.26)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | _([`9.4.26`, `9.4`](https://github.com/gearboxworks/docker-postgresql/blob/master/versions/9.4.26/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-9.5.21-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/9.5.21)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/9.5.21)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | _([`9.5.21`, `9.5`](https://github.com/gearboxworks/docker-postgresql/blob/master/versions/9.5.21/DockerfileRuntime))_ |
| [postgresql](https://www.postgresql.org/) | ![postgresql](https://img.shields.io/badge/postgresql-9.6.17-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/postgresql/9.6.17)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/postgresql/9.6.17)](https://hub.docker.com/repository/docker/gearboxworks/postgresql) | _([`9.6.17`, `9.6`](https://github.com/gearboxworks/docker-postgresql/blob/master/versions/9.6.17/DockerfileRuntime))_ |


## About this container.
A driving force behind [Gearbox](https://github.com/gearboxworks/) is to improve the user experience using software, and especially for software developers.

Our vision is to empower developers and other software users to quickly and easily use almost any version of a software service, command line tool or API without without first getting bogged down with installation and configuration.

In other words, our vision for [Gearbox](https://github.com/gearboxworks/) users is that software "**just works**".


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/) framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.

There are three methods:

## Method 1: Using launch
`launch` is a tool specifically designed to interact with a Gearbox Docker container.

It provides three important functional areas, without any Docker container learning curve:
- Allows control over Gearbox Docker containers: stop, start, create, remove.
- Build, update, modify and release Docker images.
- Acts as a proxy for interactive commands within a Gearbox Docker container.

It also provides a functional SSH daemon for connecting remotely as well as a standard set of common tools and utilities.


### Download launch
`launch` is currently in beta testing and is included along with all Gearbox Docker repos.
Once out of beta, it will be included within the Gearbox installation package.

For now, simply download the standalone `launch` binary for your O/S.
- [Mac OSX 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Darwin/launch)
- [Linux 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Linux/launch)
- [Windows 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Windows/launch)


### Running launch
There are many ways to call launch, either directly or indirectly.
Additionally, all host environment variables will be imported into the container seamlessly.
This allows a devloper to try multiple versions of software as though they were installed locally.

If a container is missing, it will be downloaded and created. Multiple versions can co-exist.

Install, create, and start the postgresql Gearbox container.

`./launch install postgresql`

Create, and start the postgresql Gearbox container. Run a shell.

`./launch shell postgresql`

Create, and start the postgresql Gearbox container with version 11.7 and run a shell.

`./launch shell postgresql:11.7`

`./launch shell postgresql:11.7 ls -l`

`./launch shell postgresql:11.7 ps -eaf`


### Available commands
If postgresql is symlinked to `launch`, then the Gearbox container will be determined automatically and the default command will be run.
All available commands for a Gearbox container will be automatically symlinked upon installation.

`./postgresql`

Running postgresql Gearbox container default command. If a container has a default interactive command, arguments can be supplied without specifying that command.

`./postgresql -flag1 -flag2 variable`

`./launch postgresql:11.7 -flag1 -flag2 variable`

Gearbox containers may have multiple executables that can be run. The postgresql Gearbox container has the following available commands:
- `clusterdb` - will execute `/usr/local/bin/clusterdb` within the container.
- `createdb` - will execute `/usr/local/bin/createdb` within the container.
- `createlang` - will execute `/usr/local/bin/createlang` within the container.
- `createuser` - will execute `/usr/local/bin/createuser` within the container.
- The default command will execute `/usr/local/bin/psql` within the container.
- `dropdb` - will execute `/usr/local/bin/dropdb` within the container.
- `droplang` - will execute `/usr/local/bin/droplang` within the container.
- `dropuser` - will execute `/usr/local/bin/dropuser` within the container.
- `ecpg` - will execute `/usr/local/bin/ecpg` within the container.
- `initdb` - will execute `/usr/local/bin/initdb` within the container.
- `pg_archivecleanup` - will execute `/usr/local/bin/pg_archivecleanup` within the container.
- `pg_basebackup` - will execute `/usr/local/bin/pg_basebackup` within the container.
- `pg_config` - will execute `/usr/local/bin/pg_config` within the container.
- `pg_controldata` - will execute `/usr/local/bin/pg_controldata` within the container.
- `pg_ctl` - will execute `/usr/local/bin/pg_ctl` within the container.
- `pg_dump` - will execute `/usr/local/bin/pg_dump` within the container.
- `pg_dumpall` - will execute `/usr/local/bin/pg_dumpall` within the container.
- `pg_isready` - will execute `/usr/local/bin/pg_isready` within the container.
- `pg_receivexlog` - will execute `/usr/local/bin/pg_receivexlog` within the container.
- `pg_recvlogical` - will execute `/usr/local/bin/pg_recvlogical` within the container.
- `pg_resetxlog` - will execute `/usr/local/bin/pg_resetxlog` within the container.
- `pg_restore` - will execute `/usr/local/bin/pg_restore` within the container.
- `pg_standby` - will execute `/usr/local/bin/pg_standby` within the container.
- `pg_test_fsync` - will execute `/usr/local/bin/pg_test_fsync` within the container.
- `pg_test_timing` - will execute `/usr/local/bin/pg_test_timing` within the container.
- `pg_upgrade` - will execute `/usr/local/bin/pg_upgrade` within the container.
- `pg_xlogdump` - will execute `/usr/local/bin/pg_xlogdump` within the container.
- `pgbench` - will execute `/usr/local/bin/pgbench` within the container.
- `postmaster` - will execute `/usr/local/bin/postmaster` within the container.
- `psql` - will execute `/usr/local/bin/psql` within the container.
- `reindexdb` - will execute `/usr/local/bin/reindexdb` within the container.
- `vacuumdb` - will execute `/usr/local/bin/vacuumdb` within the container.
- `vacuumlo` - will execute `/usr/local/bin/vacuumlo` within the container.


### Remote connection
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.
To show what ports are exported to the host, use the following command.

`./launch list postgresql`


## Method 2: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/docker-postgresql.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 3: Docker Hub

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

Either use `launch` above or discover the port and SSH directly.


```
SSH_PORT="$(docker port postgresql-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

