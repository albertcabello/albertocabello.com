FROM alpine:latest

WORKDIR /minecraft

ENV WORLDNAME default-survival
ENV GAMEMODE survival

#Install java and download server
RUN apk add --no-cache openjdk8 \
	&& apk add --no-cache wget \
	&& wget https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar

CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "server.jar", "nogui"]
