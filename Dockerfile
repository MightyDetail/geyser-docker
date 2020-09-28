FROM lsiobase/alpine:latest


ARG BUILD_TYPE=lastSuccessfulBuild
LABEL maintainer="anthr76"
LABEL org.opencontainers.image.source https://github.com/anthr76/geyser-docker

ENV LANG='en_US.UTF-8'

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
  openjdk8-jre-base


ADD https://ci.nukkitx.com/job/GeyserMC/job/Geyser/job/master/$BUILD_TYPE/artifact/bootstrap/standalone/target/Geyser.jar /opt/Geyser.jar

COPY root/ /

WORKDIR /opt

VOLUME /config
EXPOSE 19132/udp