FROM registry.access.redhat.com/rhel7.2:latest

USER root
RUN yum install --disablerepo=* --enablerepo=rhel-7-server-ose-3.2-rpms --enablerepo=rhel-7-server-rpms -y wget haproxy && yum clean all 

VOLUME ["/etc/haproxy/"]

EXPOSE 1936
EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/haproxy","-d","-f","/etc/haproxy/haproxy.cfg"]

