FROM alpine:3.10

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk add --no-cache curl && \
    apk del .build-dependencies

RUN mkdir /server-test

RUN curl -sL "https://terraria.org/system/dedicated_servers/archives/000/000/036/original/terraria-server-1402.zip" -o "/tmp/tshock.zip" && \
    unzip "/tmp/tshock.zip" -d /server-test && \
    rm "/tmp/tshock.zip"
COPY tshock/config/config.json /server-test/config/config.json
COPY script/start.sh /server-test/script/start.sh

RUN chmod +x /server/script/start.sh
