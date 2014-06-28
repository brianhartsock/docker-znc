
# ZNC on Docker

Run's [ZNC](http://wiki.znc.in/ZNC) in a Docker container

## Setup

1. Install Docker
2. Pre-existing ZNC configuration folder to mount as a volume.

## Running

Run with the config folder mounted, and the port you want exposed to the host.

`docker run -p 6697:6697 -v /var/znc:/znc brianhartsock/znc`
