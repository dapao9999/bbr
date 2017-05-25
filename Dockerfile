FROM ubuntu

MAINTAINER wtf

COPY  * /root/

RUN apt update \
    && apt install -y iptables \
    && chmod +x /root/bbr.sh /root/gost

CMD  /root/bbr.sh
