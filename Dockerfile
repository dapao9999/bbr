
FROM ubuntu

COPY  *.* /root/

RUN apt update && apt install -y shadowsocks-libev iproute2 iptables

CMD  /root/bbr.sh
