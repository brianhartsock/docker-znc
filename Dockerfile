FROM ubuntu:14.04
MAINTAINER Brian Hartsock

RUN apt-get -y update
RUN apt-get -y install znc
RUN useradd -s /bin/bash -U znc

VOLUME ["/znc"]

EXPOSE 6667
EXPOSE 6697

ADD start-znc /usr/local/bin/
RUN chmod 755 /usr/local/bin/start-znc

CMD /usr/local/bin/start-znc
