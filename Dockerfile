FROM jupyter/scipy-notebook:281505737f8a

LABEL maintainer="kmallea@gmail.com"

RUN pip install --upgrade google-api-python-client