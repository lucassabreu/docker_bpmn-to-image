# Pull base image
FROM coderockr/node-for-build:stable

ENV CLI_VERSION=0.6.0

# Install Aglio
RUN npm install -g bpmn-to-image@$CLI_VERSION || cat /root/.npm/_logs/*

WORKDIR /docs
ENTRYPOINT ["bpmn-to-image"]
