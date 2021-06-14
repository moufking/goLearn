FROM alpine:latest

COPY /build/copyfast /bin/copyfast


ENTRYPOINT [ "/bin/copyfast" ]
