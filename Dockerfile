FROM alpine

LABEL maintainer="robert.chenault.tm@gmail.com"

RUN apk add --update nodejs nodejs -npm

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 8000

ENTRYPOINT ["node", "./app/server.js"]