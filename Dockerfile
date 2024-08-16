FROM jenkins/agent:alpine-jdk17

USER root

# Install Python and any other required packages
# RUN apt-get update && apt-get install -y python3 python3-pip

RUN apk add python3
RUN apk add py3-pip
# Switch back to the Jenkins user
USER jenkins