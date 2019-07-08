FROM alpine:3.10

RUN apk add --no-cache mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add --no-cache --virtual=.build-dependencies ca-certificates && \
    cert-sync /etc/ssl/certs/ca-certificates.crt && \
    apk del .build-dependencies

RUN mkdir server
RUN mkdir server/scripts
COPY tshock/ /server
COPY script/ /server/scripts

WORKDIR /server
RUN unzip "tshock_4.3.26.zip"
RUN rm "tshock_4.3.26.zip"

#RUN chmod +x /server/scripts/start.sh
#RUN /server/scripts/start.sh

#ENTRYPOINT ["mono", "--server", "--gc=sgen", "-O=all", "TerrariaServer.exe"]
#CMD ["-world", "Terraria/Worlds/Default.wld", "-autocreate", "2"]