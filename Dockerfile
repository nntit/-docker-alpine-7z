FROM alpine:latest

RUN \
  apk --update --no-cache add p7zip && \
  apk --update --no-cache add openssh sshpass && \
  apk --update --no-cache add curl && \
  rm -rf /var/cache/apk/* /tmp/*

ENTRYPOINT 7z
CMD ["7z"]
