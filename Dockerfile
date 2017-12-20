FROM node:slim
LABEL maintainer = "jani@janakiram.com"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./app/ ./
RUN npm install
CMD ["node", "app.js"]
