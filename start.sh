#!/bin/sh
#exec /usr/sbin/httpd -f && \
#/usr/sbin/httpd -D FOREGROUND && \
/usr/sbin/nagios -d /etc/nagios/nagios.cfg && \
/usr/sbin/httpd -D FOREGROUND
