FROM debian:bookworm

RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends openconnect; \
    rm -rf /var/lib/apt/lists/*

COPY openconnect.sh /openconnect.sh

CMD ["/openconnect.sh"]
