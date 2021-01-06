#!/bin/sh

iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "Sogou web spider" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "BLEXBot" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "CensysInspect/" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "Barkrowler/" -j DROP
iptables -D INPUT -p tcp -m multiport --dport 80,443 -m string --algo bm --string "netEstate NE Crawler" -j DROP

# iptables -S
# curl -A "Sogou web spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)" -I http://example.com
# curl: (56) Failure when receiving data from the peer
