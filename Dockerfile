FROM alpine:latest

ARG STOUT_VERSION=1.2.3

RUN apk add --no-cache --virtual build-dependencies \
    curl \
  && curl -o stout https://github.com/EagerIO/Stout/releases/download/v$STOUT_VERSION/stout-linux \
  && apk del build-dependencies

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
