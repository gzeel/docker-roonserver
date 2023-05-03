FROM alpine:latest
MAINTAINER gerrit@scherpenzeel.de

RUN apk add gcompat bash curl bzip2 ffmpeg cifs-utils alsa-utils icu-libs

ENV ROON_SERVER_PKG RoonServer_linuxx64.tar.bz2
ENV ROON_SERVER_URL https://download.roonlabs.net/builds/${ROON_SERVER_PKG}
ENV ROON_DATAROOT /data
ENV ROON_ID_DIR /data

VOLUME [ "/app", "/data", "/music", "/backup" ]

ADD run.sh /
ENTRYPOINT /run.sh
