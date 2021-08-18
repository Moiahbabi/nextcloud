FROM nextcloud:latest
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install ffmpeg imagemagick ghostscript sudo cron vim
USER www-data
RUN echo export PHP_MEMORY_LIMIT=512M >> ~/.bashrc
USER root