FROM jenkins/agent:alpine-jdk17

USER root

# Install Python and any other required packages
# RUN apt-get update && apt-get install -y python3 python3-pip

RUN apk add docker

docker run -d --restart=always -p 127.0.0.1:2376:2375 --network jenkins -v //var/run/docker.sock:/var/run/docker.sock alpine/socat tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock

# Switch back to the Jenkins user
USER jenkins