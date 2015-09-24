FROM centos
RUN yum install -y stunnel
ADD stunnel.conf /etc/stunnel/stunnel.conf
ADD stunnel.pem /etc/stunnel/stunnel.pem
CMD /usr/bin/stunnel /etc/stunnel/stunnel.conf



# build mode
#FROM centos
#RUN yum -y install automake gcc openssl openssl-devel squid
#RUN curl -O 'https://www.stunnel.org/downloads/stunnel-5.23.tar.gz'
#RUN tar xvzf stunnel-5.23.tar.gz
#RUN cd /stunnel-5.23 && ./configure  && make && make install
#ADD stunnel.conf /etc/stunnel/stunnel.conf
#ADD stunnel.pem /etc/stunnel/stunnel.pem
#ADD squid.conf /etc/squid/squid.conf
#CMD /usr/local/bin/stunnel /etc/stunnel/stunnel.conf
#CMD /usr/bin/stunnel /etc/stunnel/stunnel.conf
