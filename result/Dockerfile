FROM node:alpine

EXPOSE 80

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . /usr/src/app

CMD ["node", "server.js"]