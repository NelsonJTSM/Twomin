FROM node:buster

LABEL version="0.1"
LABEL maintainer="ntorressm@gmail.com"

WORKDIR /server

COPY . /server
RUN npm install
RUN npm run-script build

EXPOSE 3334
CMD ["npm", "start"]