FROM ubuntu

MAINTAINER wtf

COPY  *.* /root/lkl/

RUN apt update \
    && apt install -y iptables python-pip \
    && pip install shadowsocks \
    && chmod +x /root/lkl/bbr.sh 

CMD  /root/lkl/bbr.sh
