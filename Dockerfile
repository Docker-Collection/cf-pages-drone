FROM node:lts-alpine3.16@sha256:1eabdb1aa3f6e68558c08501572731db560d10c2194a67d3417103b0a9868693

# Copies the clone script to the Docker image
COPY deploy.sh /usr/local/bin/
COPY set_env /usr/local/bin

# Makes the clone script executable
RUN chmod +x /usr/local/bin/deploy.sh
RUN chmod +x /usr/local/bin/set_env

ENTRYPOINT [ "/usr/local/bin/deploy.sh" ]
