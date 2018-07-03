FROM jupyter/tensorflow-notebook

WORKDIR /app

COPY requirements.txt requirements.txt

COPY ./src /app/src

