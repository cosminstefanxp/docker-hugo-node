FROM node:14-alpine

ENV HUGO_VERSION=0.82.0
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Install glibc (required for Extended version of Hugo) & temporary tools
RUN set -x && \
  apk add --no-cache --update \
    wget ca-certificates libstdc++ libc6-compat

# Install HUGO
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} \
    && tar xzf ${HUGO_BINARY} \
    && rm -r ${HUGO_BINARY} \
    && mv hugo /usr/bin \
    && apk del wget ca-certificates
