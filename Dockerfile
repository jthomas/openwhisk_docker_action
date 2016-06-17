#
# Dockerfile for building a blackbox container with a nodejs server interfacing to a client binary.
#
FROM node:0.12.14

ADD ./server /blackbox/server

WORKDIR /blackbox/server
RUN mkdir logs
RUN npm install

ENV ACTION="/blackbox/action"

# Final steps
EXPOSE 8080
CMD ["node", "app.js"]
