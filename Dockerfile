FROM python:3.7-alpine
MAINTAINER Jake Kim

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# to not run app as a root user
RUN adduser -D user
USER user
