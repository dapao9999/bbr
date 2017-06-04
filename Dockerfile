FROM ubuntu

MAINTAINER wtf

COPY  *.* /root/

RUN apt update \
    && apt install -y \
    iptables \
    iproute2 \
    python-pip \
    && pip install shadowsocks \
    && chmod +x /root/bbr.sh

CMD  /root/bbr.sh
