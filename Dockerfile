FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm ci

COPY . .

EXPOSE 80

CMD [ "node", "backendApp.js" ]