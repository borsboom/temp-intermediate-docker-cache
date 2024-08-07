FROM node:14-alpine

RUN apk update && apk add build-base autoconf automake libtool pkgconfig nasm util-linux

RUN mkdir -p /app/public && echo "<html><head><title>Hello</title></head><body><p>Hello</p></body></html>" >/app/public/index.html
