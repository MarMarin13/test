# Use the official Jenkins inbound agent as the base image
FROM jenkins/inbound-agent:latest

# Switch to root user to install software
USER root

# Install necessary dependencies for Docker
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce-cli docker-ce && \
    apt-get clean

# Install JDK 17
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

# Add the Jenkins user to the Docker group
RUN usermod -aG docker jenkins

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV DOCKER_HOST=unix:///var/run/docker.sock

# Expose Docker socket
VOLUME /var/run/docker.sock

# Switch back to Jenkins user
USER jenkins