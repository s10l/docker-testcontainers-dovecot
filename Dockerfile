FROM alpine:3.9

LABEL maintainer="s10l@github.com"

RUN apk update \
&& apk upgrade \
&& apk add --no-cache \
dovecot=2.3.3-r1 \
dovecot-pop3d=2.3.3-r1 \
&& openssl dhparam -out /etc/ssl/dovecot/dhparam.pem 2048

EXPOSE 110 143 993 995

CMD ["/usr/sbin/dovecot", "-F"]