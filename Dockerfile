FROM jenkins

USER root

# Install git, maven, default-jdk, nodejs
# The tar and bzip2 packages are required for Phantom.js installation in npm: https://github.com/Medium/phantomjs/issues/326
RUN \
  apt-get clean && \
  apt-get update && \
  apt-get install -y \
    curl \
    bzip2 \
    traceroute \
    dnsutils \
    tcpdump \
    telnet \
    git \
    maven \
    nodejs

# Install Docker (to be used as a client only)
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker jenkins

RUN apt-get install docker-compose -y

USER jenkins

# Add Git plugin
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt