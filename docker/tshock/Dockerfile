FROM alpine:3.16

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk add --no-cache curl && \
    apk del .build-dependencies

RUN mkdir /server

RUN curl -sL "https://github.com/Pryaxis/TShock/releases/download/v4.3.26/tshock_4.3.26.zip" -o "/tmp/tshock.zip" && \
    unzip "/tmp/tshock.zip" -d /server && \
    rm "/tmp/tshock.zip"

COPY tshock/config/config.json /server/config/config.json
COPY script/start.sh /server/script/start.sh

RUN chmod +x /server/script/start.sh
