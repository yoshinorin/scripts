#!/bin/sh

service ufw stop
service nginx stop
certbot renew
service nginx start
service ufw start
certbot-renew.sh
