FROM alpine

RUN apk add php
RUN mkdir /srv/http/
COPY ./src/* /srv/http/

ENTRYPOINT php -S 0.0.0.0:80 -t /srv/http/
