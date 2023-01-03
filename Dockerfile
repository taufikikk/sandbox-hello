FROM node:12.16.1-alpine

WORKDIR /myapp
ENV NODE_ENV development
ADD package.json /myapp/
ADD package-lock.json /myapp/
ADD app.js /myapp/
RUN apk update
RUN apk add busybox-extras
RUN apk add iputils
RUN npm install
COPY . .
EXPOSE 3009
CMD ["node", "app.js"]