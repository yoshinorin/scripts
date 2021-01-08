#!/bin/sh

mkdir /etc/nginx/evil.d/
cp evil-request.map /etc/nginx/evil.d/evil-request.map
cp ua.map /etc/nginx/evil.d/ua.map
cp common.conf /etc/nginx/evil.d/common.conf