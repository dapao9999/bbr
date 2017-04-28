FROM debian:latest

MAINTAINER wtf

COPY  *.* /root/lkl/

RUN apt-get update ;\
    apt-get install -y iptables python-pip ;\
	pip install shadowsocks ;\
    chmod a+x /root/lkl/bbr.sh 

CMD  /root/lkl/bbr.sh
