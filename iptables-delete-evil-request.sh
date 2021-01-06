#!/bin/sh

iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/wp-login.php" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/index.php" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/vendor/" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/wp-admin.php" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/wp-content" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "XDEBUG_SESSION_" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/.env" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "\x00" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/system_api.php" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "/api/v1/time" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "|'" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string ".aspx" -j DROP
