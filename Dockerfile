
FROM ubuntu

COPY  * /

RUN apt update && apt install -y shadowsocks-libev iproute2 iptables 

CMD /bbr.sh
