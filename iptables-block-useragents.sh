#!/bin/sh

iptables -A INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "Sogou" -j DROP
iptables -A INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "BLEXBot" -j DROP
iptables -A INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "CensysInspect/" -j DROP
iptables -A INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "Barkrowler/" -j DROP
iptables -A INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "netEstate NE Crawler" -j DROP
iptables -A INPUT -p tcp -m multiport --dports 80,443 -m string --algo bm --string "Nimbostratus-Bot" -j DROP

iptables -D INPUT -p tcp -m multiport --dports 80,443 -m string --string 'Sogou' --algo kmp -j DROP

iptables-save
netfilter-persistent save
netfilter-persistent reload
systemctl start netfilter-persistent

# iptables -S
# curl -A "Sogou web spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)" -I http://example.com
# curl: (92) HTTP/2 stream 0 was not closed cleanly: PROTOCOL_ERROR (err 1)
