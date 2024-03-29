FROM python:3.7-alpine
MAINTAINER Daniel Beleza

ENV PYTHONNUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

# Command to init project: docker-compose run app sh -c "django-admin.py startproject app ."
