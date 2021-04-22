FROM node:14
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update; \
    apt-get install -y --no-install-recommends jq; \
    rm -rf /var/lib/apt/lists/*;

RUN npm install -g vite;

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
