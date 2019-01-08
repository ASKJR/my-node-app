#base
FROM ubuntu:16.04

#info about this img
LABEL maintainer="Alberto Kato <albertokatojr@gmail.com>"

LABEL objective="learning a little bit more about docker."

RUN apt-get update && apt-get install -q -y --no-install-recommends\
    nodejs npm \ 
    && rm -rf /var/lib/apt/lists/* 

RUN apt-get clean autoclean

RUN apt-get autoremove -y

ADD ./app /app

WORKDIR /app

RUN npm install

RUN npm cache clean  

EXPOSE 9000

ENTRYPOINT ["nodejs", "index.js"]