FROM nextcloud:latest
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install ffmpeg imagemagick ghostscript sudo cron
USER www-data
ENV PHP_MEMORY_LIMIT=512M
USER root