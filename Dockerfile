#test
FROM node:14.18.0-alpine

RUN apt-get update && apt-get -y install curl zip
