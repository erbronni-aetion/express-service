FROM node:14.2.0-alpine

RUN apk update \
  && apk upgrade \
  && apk add bash

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Need user to be root to create local directories in Docker container
# USER node

CMD [ "npm", "start"]
