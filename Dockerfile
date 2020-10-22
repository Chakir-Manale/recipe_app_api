FROM python:3.7-alpine
# MAINTAINER DEPRECATED !!
# MAINTAINER London App Developer Ltd.

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY backend /app

RUN adduser -D user
USER user