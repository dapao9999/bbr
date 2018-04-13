FROM ubuntu

COPY  *.* /root/

RUN apt update \
    && apt install -y iptables python3-pip \
    && pip3 install shadowsocks \
    && chmod +x /root/bbr.sh

CMD  /root/bbr.sh
