FROM alpine:3.11.6

RUN apk add --no-cache \
    bash \
    git \
    openssh-client \
    ca-certificates

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
