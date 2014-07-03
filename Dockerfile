FROM ubuntu:14.04
MAINTAINER Brian Hartsock

RUN apt-get -y update
RUN apt-get -y install znc
RUN useradd -s /bin/bash -U znc

VOLUME ["/znc"]
RUN chown -R znc:znc /znc
RUN chmod o-rwx /znc

EXPOSE 6667
EXPOSE 6697

USER znc

CMD ["znc", "-d", "/znc", "-f"]
