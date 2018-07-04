FROM jupyter/datascience-notebook
MAINTAINER Ekkachai Danwanichakul<ekka21@gmail.com>

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./src /app/src

