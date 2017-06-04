FROM ubuntu

MAINTAINER wtf

COPY  *.* /root/

RUN apt update \
    && apt install -y \
    iptables \
    iproute2 \
    software-properties-common \
    && add-apt-repository ppa:max-c-lv/shadowsocks-libev \
    && apt update \
    && apt install -y \
    shadowsocks-libev \
    && chmod +x /root/bbr.sh

CMD  /root/bbr.sh
