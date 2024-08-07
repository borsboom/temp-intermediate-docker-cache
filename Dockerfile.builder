FROM node:14-alpine

RUN apk update && apk add build-base autoconf automake libtool pkgconfig nasm util-linux

RUN mkdir -p /app/public && echo "<html><head><title>Hello, world</title></head><body><p>Hello, world</p></body></html>" >/app/public/index.html

#@@@ PRETEND TO TAKE A LONG TIME TO BUILD
RUN sleep 60
