FROM ubuntu

MAINTAINER wtf

COPY  *.* /root/

RUN apt update \
    && apt install -y iptables python-pip git \
    && pip install git+https://github.com/shadowsocks/shadowsocks.git@master \
    && chmod +x /root/bbr.sh

CMD  /root/bbr.sh
