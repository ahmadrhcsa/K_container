FROM centos
MAINTAINER Shahnawaz<ahmad.rhcsa@gmail.com>
# Add repo file
ADD ./ahmad.repo /etc/yum.repos.d/

# Install software
RUN yum --assumesyes update && \
yum --assumesyes install bash nmap iproute && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "10.0.2.15/24"]
