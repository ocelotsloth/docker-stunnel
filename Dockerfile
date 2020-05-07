FROM alpine

RUN set -x \
    && addgroup -S stunnel \
    && adduser -S -G stunnel stunnel \
    && apk add --update --no-cache ca-certificates stunnel

CMD ["stunnel"]

LABEL org.label-schema.name="ocelotsloth/stunnel" \
      org.label-schema.description="stunnel on Alpine" \
      org.label-schema.url="https://github.com/ocelotsloth/docker-stunnel/" \
