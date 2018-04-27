FROM alpine:3.7

RUN apk --no-cache add mysql-client
COPY ./run.sh /
ENTRYPOINT [ "/run.sh" ]
