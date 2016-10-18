FROM alpine
RUN apk add --no-cache vsftpd tzdata

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

VOLUME /var/lib/ftp
EXPOSE 21/tcp

CMD ["vsftpd"]
