# Dockerfile for Jenkins Master
FROM jenkins/jenkins:lts

MAINTAINER Alan Mangroo <alan.mangroo@gmail.com>

# Change to jenkins user
USER jenkins

# Add Jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
