FROM jenkins/agent:alpine-jdk17

USER root

# Install Python and any other required packages
# RUN apt-get update && apt-get install -y python3 python3-pip

RUN apk add helm

# Switch back to the Jenkins user
USER jenkins