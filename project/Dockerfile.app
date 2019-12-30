FROM python:3-alpine
COPY flask-app/app.py /app/app.py
COPY flask-app/requirements.txt /app/requirements.txt
WORKDIR /app

Run pip install -r requirements.txt

CMD python ./app.py
