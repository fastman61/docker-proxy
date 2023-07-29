# syntax=docker/dockerfile:labs

FROM --platform=$TARGETPLATFORM ubuntu

RUN set -x \
    && apk add --no-cache bash socat

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENV PORT=2375

EXPOSE 2375/tcp

ENTRYPOINT ["bash", "/docker-entrypoint.sh"]
