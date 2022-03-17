FROM ubuntu:latest
MAINTAINER SERFIM T.I.C.

# Boundary client
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -  \
  apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
  apt-get update && sudo apt-get install boundary
  
