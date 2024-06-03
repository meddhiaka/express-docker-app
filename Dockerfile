FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY src ./src

WORKDIR /app/src

CMD ["node", "server.js"]