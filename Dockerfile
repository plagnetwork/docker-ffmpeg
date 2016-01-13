FROM debian:jessie

RUN apt-get update && apt-get install -y \
    ffmpeg

RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

ENV LC_ALL C.UTF-8

VOLUME ["/tmp/ffmpeg"]

CMD ["/bin/bash"]
