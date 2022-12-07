# Pull base image
FROM coderockr/node-for-build:stable

ENV CLI_VERSION=latest

USER root

# Install Aglio
RUN npm install -g bpmn-to-image@$CLI_VERSION || cat /root/.npm/_logs/*

USER pptruser

WORKDIR /docs
ENTRYPOINT ["bpmn-to-image"]
