FROM alpine:3.16

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk add --no-cache curl && \
    apk del .build-dependencies

RUN mkdir /server

RUN curl -sL "https://www.terraria.org/api/download/pc-dedicated-server/terraria-server-1436.zip" -o "/tmp/server.zip" && \
    unzip "/tmp/server.zip" -d /server && \
    rm "/tmp/server.zip"

COPY script/start.sh /server/script/start.sh
RUN mv /server/1436/Linux/* /server
RUN rm -rf /server/1436

RUN chmod +x /server/script/start.sh
