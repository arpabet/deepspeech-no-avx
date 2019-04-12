FROM ubuntu:18.04
MAINTAINER Alex Shvid <alex@shvid.com>

RUN apt-get update && apt-get install -y locales && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

ADD native-client/deepspeech.h /usr/local/include/deepspeech.h
ADD native-client/native-client-no-avx.tar.gz /usr/local/lib/

ENV LD_LIBRARY_PATH=/usr/local/lib
