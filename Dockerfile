FROM python:3.8

RUN pip install pip --upgrade
RUN pip install ansible

WORKDIR /work
