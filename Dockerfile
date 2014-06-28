FROM ubuntu:14.04
MAINTAINER Brian Hartsock

RUN apt-get -y update
RUN apt-get -y install znc
RUN useradd -s /bin/bash -U znc
RUN mkdir /znc
RUN chown -R znc:znc /znc
RUN chmod o-rwx /znc

EXPOSE 6667
EXPOSE 6697

USER znc

ENTRYPOINT ["znc", "-d", "/znc", "-f"]