FROM postgres:11.5

ENV TZ 'Asia/Tokyo'
ENV LANG ja_JP.UTF-8

RUN set -x \
    && apt-get update -y \
    && apt-get install locales \
    && echo "ja_JP UTF-8" > /etc/locale.gen \
    && locale-gen

COPY custom_config.sh /docker-entrypoint-initdb.d
