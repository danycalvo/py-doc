# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
#FROM registry.access.redhat.com/ubi8/python-38
WORKDIR /app

COPY requirements.txt requirements.txt
RUN    pip3 install --no-cache-dir -r requirements.txt
EXPOSE 5000
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
