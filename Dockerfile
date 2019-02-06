FROM alpine:3.7

LABEL maintainer="s10l@github.com"

RUN apk update \
&& apk upgrade \
&& apk add --no-cache \
dovecot=2.2.34-r0

EXPOSE 110 143 993 995

CMD ["/usr/sbin/dovecot", "-F"]