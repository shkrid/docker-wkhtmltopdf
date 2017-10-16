FROM python:alpine

#https://oncletom.io/2015/docker-encoding/
ENV LANG=C.UTF-8

#Fontconfig warning: ignoring C.UTF-8: not a valid language tag
ENV LC_ALL=C

RUN pip3 install imgkit

RUN apk add --no-cache openssl gtk+ ttf-dejavu fontconfig

COPY bin/* /usr/bin/
