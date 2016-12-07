FROM alpine:latest

ARG STOUT_VERSION=1.2.3

RUN apk add --no-cache --virtual build-dependencies \
    curl \
  && curl -o /usr/local/bin/stout https://github.com/EagerIO/Stout/releases/download/v$STOUT_VERSION/stout-linux \
  && apk del build-dependencies

RUN chmod u+x /usr/local/bin/stout

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
