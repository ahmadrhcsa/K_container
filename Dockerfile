FROM centos
MAINTAINER Shahnawaz<ahmad.rhcsa@gmail.com>
# Add repo file
ADD ./ahmad.repo /etc/yum.repos.d/

# Install software
RUN dnf update && \
dnf install bash nmap iproute && \
dnf clean all

ENTRYPOINT ["/usr/bin/nmap"]
