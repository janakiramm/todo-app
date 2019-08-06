FROM node:slim
LABEL maintainer = "jani@janakiram.com"
RUN mkdir -p /usr/src/app
RUN apt-get update && apt-get install -y iputils-ping
WORKDIR /usr/src/app
COPY ./app/ ./
RUN npm install
CMD ["node", "app.js"]
