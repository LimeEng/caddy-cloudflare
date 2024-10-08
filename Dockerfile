# Adapted from https://hub.docker.com/_/caddy

FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare \
    github.com/mholt/caddy-dynamicdns

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
