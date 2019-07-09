FROM alpine:3.10

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk add --no-cache curl && \
    apk del .build-dependencies

RUN mkdir /server
RUN mkdir /server/tshock

RUN curl -sL "https://github.com/Pryaxis/TShock/releases/download/v4.3.26/tshock_4.3.26.zip" -o "/tmp/tshock_4.3.26.zip" && \
    unzip "/tmp/tshock_4.3.26.zip" -d /server/tshock && \
    rm "/tmp/tshock_4.3.26.zip"
COPY tshock/config/config.json /server/tshock/config/config.json
COPY script/start.sh /server/tshock/script/start.sh

RUN chmod +x /server/tshock/script/start.sh
