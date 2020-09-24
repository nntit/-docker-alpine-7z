FROM alpine:latest

RUN \
  apk --update --no-cache add p7zip && \
  apk --update --no-cache add openssh && \
  apk --update --no-cache add sshpass && \
  apk --update --no-cache add curl && \
  rm -rf /var/cache/apk/* /tmp/*
