FROM nextcloud:apache

RUN set -ex; \
    \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        libmagickcore-6.q16-6-extra \
        smbclient \
        # procps \
        # supervisor \
        # libreoffice \
    ; \
    rm -rf /var/lib/apt/lists/*

# RUN apt-get update && apt-get install -y \
#     supervisor \
#   && rm -rf /var/lib/apt/lists/* \
#   && mkdir /var/log/supervisord /var/run/supervisord

# COPY supervisord.conf /

ENV NEXTCLOUD_UPDATE=1

# CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]

WORKDIR /var/www/html