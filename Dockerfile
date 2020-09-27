FROM lsiobase/ubuntu:bionic


ARG BUILD_TYPE=lastSuccessfulBuild
ARG DEBIAN_FRONTEND="noninteractive"
LABEL maintainer="anthr76"

RUN \
 echo "**** install packages ****" && \
 apt-get update && \
 apt-get install -y \
  openjdk-8-jre-headless \
 && echo "**** cleanup ****" && \
 apt-get clean && \
 rm -rf \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*


ADD https://ci.nukkitx.com/job/GeyserMC/job/Geyser/job/master/$BUILD_TYPE/artifact/bootstrap/standalone/target/Geyser.jar /opt/Geyser.jar

COPY root/ /

WORKDIR /opt

VOLUME /config
EXPOSE 19132