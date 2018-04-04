FROM debian

COPY  *.* /root/

RUN apt update \
    && apt install -y iptables python-pip \
    && pip install shadowsocks \
    && chmod +x /root/bbr.sh

CMD  /root/bbr.sh
