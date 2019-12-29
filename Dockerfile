FROM node:12.14.0-alpine3.9 as node
COPY project/flask-app /app
WORKDIR /app

RUN npm install && npm run build

FROM python:3-alpine
COPY --from=node /app /app
WORKDIR /app

Run pip install -r requirements.txt

CMD python ./app.py
