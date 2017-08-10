FROM alpine:latest

LABEL maintainer "Tim Malone <tim.malone@chromatix.com.au>"

RUN apk --no-cache add lftp

ENTRYPOINT [ "/usr/bin/lftp" ]
