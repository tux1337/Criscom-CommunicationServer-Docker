FROM node:10-stretch

WORKDIR /home/node/app


RUN apt-get update && apt-get upgrade -y

RUN wget http://u.rucomm.com/install/tcp/communication-server.zip
RUN apt-get install unzip -y
RUN unzip communication-server.zip
RUN rm communication-server.zip
RUN apt-get remove unzip -y

RUN mv communication-server/* .
RUN rm -rf communication-server

RUN apt-get clean



ENV NPM_CONFIG_LOGLEVEL warn


# Install pm2
RUN npm install pm2 -g

#Install depencies of application
RUN npm install --production
RUN npm install node-gyp -g
RUN node-gyp install

#App Port
EXPOSE 3939


CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]

