# syntax=docker/dockerfile:labs

FROM --platform=$TARGETPLATFORM ubuntu

RUN set -x \
    && apt-get update \
    && apt-get install bash socat

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENV PORT=2375

EXPOSE 2375/tcp

ENTRYPOINT ["bash", "/docker-entrypoint.sh"]
