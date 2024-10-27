FROM node:22-bookworm-slim

COPY . /app
WORKDIR /app
RUN npm install
ENTRYPOINT ["node", "index.mjs"]

