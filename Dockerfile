FROM node:7.7-wheezy

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y dnsutils curl
RUN curl -L https://www.npmjs.com/install.sh | sh
RUN npm install -g coffee-script
RUN npm install -g mocha
# ADD app/* /usr/src/app/
# RUN npm install

# replace this with your application's default port
EXPOSE 8900

CMD [ "node" ]