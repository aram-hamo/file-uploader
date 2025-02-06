FROM alpine

RUN apk add php
RUN mkdir /srv/http/
COPY ./src/* /srv/http/
RUN mkdir /srv/http/content/

RUN printf "\npost_max_size = 16384M\n"       >> /etc/php82/php.ini
RUN printf "\nupload_max_filesize = 8192M\n" >> /etc/php82/php.ini
RUN printf "\nmax_file_uploads = 500\n"      >> /etc/php82/php.ini

ENTRYPOINT php -S 0.0.0.0:80 -t /srv/http/
