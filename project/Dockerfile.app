FROM node:12.14.0-alpine3.9
COPY /flask-app /app
WORKDIR /app

RUN npm install && npm run build