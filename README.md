
# ZNC on Docker

Run's [ZNC](http://wiki.znc.in/ZNC) in a [Docker](http://www.docker.com/) container. Configuration is expected to be stored as a volume on the host machine.

## Setup

The following assumptions have been made in the following setup instructions:

* Port 6697 will be used for ZNC on the host machine
* The variable `$PATH_TO_CONFIG` (i.e. `PATH_TO_CONFIG=/var/znc`) has been set.

### Using with Docker Registry

1. `mkdir $PATH_TO_CONFIG`
1. `docker pull brianhartsock/znc`
1. `docker run -p 6697:6697 -v $PATH_TO_CONFIG:/znc brianhartsock/znc`

If you don't have a configuration file, just run the following command prior to step 3:

`docker run -p 6697:6697 -v $PATH_TO_CONFIG:/znc brianhartsock/znc znc --makeconf -d $PATH_TO_CONFIG`


### Using Dockerfile

1. `mkdir $PATH_TO_CONFIG`
1. `git clone https://github.com/brianhartsock/docker-znc.git; cd docker-znc`
1. `docker build -t znc`
1. `docker run -p 6697:6697 -v $PATH_TO_CONFIG:/znc znc`

If you don't have a configuration file, just run the following command prior to step 4:

`docker run -p 6697:6697 -v $PATH_TO_CONFIG:/znc znc znc --makeconf -d $PATH_TO_CONFIG`

## Development

### Using with Vagrant

If you have a pre-existing ZNC config, simply run the following commands.

1. `git clone https://github.com/brianhartsock/docker-znc.git; cd docker-znc`
1. `mkdir znc-config`
1. `vagrant up`
