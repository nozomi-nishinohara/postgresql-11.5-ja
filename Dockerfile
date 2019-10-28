FROM postgres:11.5

RUN set -x \
    && apt-get update -y \
    && apt-get install locales \
    && echo "ja_JP UTF-8" > /etc/locale.gen \
    && locale-gen

ENV TZ 'Asia/Tokyo'
ENV LANG ja_JP.UTF-8

# COPY custom_config.sh /docker-entrypoint-initdb.d
RUN set -x \
    && sed -i "s/^.*max_prepared_transactions\s*=\s*\(.*\)$/max_prepared_transactions = 1000/" "$PGDATA"/postgresql.conf \
    && sed -i "s/^.*max_connections\s*=\s*\(.*\)$/max_connections = 1000/" "$PGDATA"/postgresql.conf