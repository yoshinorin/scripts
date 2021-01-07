#!/bin/sh

iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "Sogou web spider" -j DROP
iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "BLEXBot" -j DROP
iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "CensysInspect/" -j DROP
iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "Barkrowler/" -j DROP
iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "netEstate NE Crawler" -j DROP
iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "Nimbostratus-Bot" -j DROP

iptables-save
netfilter-persistent save
netfilter-persistent reload
systemctl start netfilter-persistent

#iptables-restore < /etc/iptables/rules.v4