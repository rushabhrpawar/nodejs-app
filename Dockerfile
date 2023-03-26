FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm config set strict-ssl false

RUN npm install 

COPY . . 

EXPOSE 4000

CMD [ "node", "index.js" ]