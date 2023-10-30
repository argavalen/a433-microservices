FROM node:14.21-alpine as builder

WORKDIR /app

COPY package*.json ./

COPY . .

RUN npm ci

EXPOSE 3000

CMD [ "node", "index.js" ]