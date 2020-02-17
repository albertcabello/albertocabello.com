FROM alpine:latest

WORKDIR /minecraft

ENV WORLDNAME default-survival
ENV GAMEMODE survival

#Install java and download server
RUN apk add --no-cache openjdk8 \
	&& apk add --no-cache wget \
	&& wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

CMD ["java", "-jar", "server.jar"]
