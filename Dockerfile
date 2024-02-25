FROM node:lts-alpine3.16@sha256:f3299f16246c71ab8b304d6745bb4059fa9283e8d025972e28436a9f9b36ed24

# Copies the clone script to the Docker image
COPY deploy.sh /usr/local/bin/
COPY set_env /usr/local/bin

# Makes the clone script executable
RUN chmod +x /usr/local/bin/deploy.sh
RUN chmod +x /usr/local/bin/set_env

ENTRYPOINT [ "/usr/local/bin/deploy.sh" ]
