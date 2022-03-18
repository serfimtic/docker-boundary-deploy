FROM ubuntu:latest
MAINTAINER SERFIM T.I.C.

# Boundary client
RUN apt-get update && apt-get -y install curl lsb-release gnupg2 software-properties-common
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install boundary
