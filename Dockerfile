FROM node:22.11.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./src src/

EXPOSE 3000

# Need user to be root to create local directories in Docker container
# USER node

CMD [ "npm", "start"]
