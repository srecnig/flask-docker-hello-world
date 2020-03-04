FROM python:3.8.1-slim-buster

LABEL maintainer="ms@veryunited.net"
LABEL description="dockerized hello-world in flask"

RUN mkdir /app
WORKDIR /app
EXPOSE 5000

COPY requirements.txt /app
RUN pip install -r /app/requirements.txt

COPY app.py /app

ENV FLASK_APP=app.py
ENV FLASK_ENV=development
CMD ["flask", "run", "--host=0.0.0.0"]
