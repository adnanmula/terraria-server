FROM alpine:3.11

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk del .build-dependencies

RUN apk add --no-cache curl

RUN mkdir /server

RUN curl -sL "https://terraria.org/system/dedicated_servers/archives/000/000/036/original/terraria-server-1402.zip" -o "/tmp/tshock.zip" && \
    unzip "/tmp/tshock.zip" -d /server && \
    rm "/tmp/tshock.zip"
COPY tshock/config/config.json /server/config/config.json
COPY script/start.sh /server/script/start.sh
RUN mv /server/1402/Linux/* /server 
RUN rm -rf /server/1402

RUN chmod +x /server/script/start.sh
