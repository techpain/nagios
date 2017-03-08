FROM alpine:latest

ADD start.sh /start.sh 

RUN apk add --no-cache nagios nagios-plugins nagios-web apache2 iputils net-snmp mini-sendmail && \
	chmod +x start.sh && \
	echo "ServerName localhost" >> /etc/apache2/httpd.conf && \
	mkdir -p /run/apache2


RUN ln -sf /dev/stdout /var/log/apache2/access.log && \
    ln -sf /dev/stderr /var/log/apache2/error.log

CMD /start.sh
