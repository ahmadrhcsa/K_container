FROM centos
MAINTAINER Shahnawaz<ahmad.rhcsa@gmail.com>
# Add repo file
ADD ./ahmad.repo /etc/yum.repos.d/
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g'
:wq!

# Install software
RUN dnf update && \
dnf install bash nmap iproute && \
dnf clean all

ENTRYPOINT ["/usr/bin/nmap"]
