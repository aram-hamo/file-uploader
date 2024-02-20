FROM alpine

RUN apk add php
RUN mkdir /srv/http/
COPY ./src/* /srv/http/

RUN printf "\npost_max_size = 8192M\n"       >> /etc/php/7.4/apache2/php.ini
RUN printf "\nupload_max_filesize = 8192M\n" >> /etc/php/7.4/apache2/php.ini
RUN printf "\nmax_file_uploads = 500\n"      >> /etc/php/7.4/apache2/php.ini

ENTRYPOINT php -S 0.0.0.0:80 -t /srv/http/
