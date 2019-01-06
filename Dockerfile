#base
FROM ubuntu:16.04

#info about this img
LABEL maintainer="Alberto Kato <albertokatojr@gmail.com>"

LABEL objective="learning a little bit more about docker."

RUN apt-get update -y

RUN apt-get install nodejs -y

RUN apt-get install npm -y

ADD ./app /app

WORKDIR /app

RUN npm install

EXPOSE 9000

ENTRYPOINT ["nodejs", "index.js"]



