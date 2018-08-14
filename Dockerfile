FROM node:8 AS builder
RUN mkdir /app /app/logs
WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD npm run dev
