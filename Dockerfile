LABEL maintainer = "jani@janakiram.com"
FROM node:slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./app/ ./
RUN npm install
CMD ["node", "app.js"]