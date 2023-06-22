
FROM ubuntu:latest

RUN apt-get update && apt-get install -y ubuntu

RUN mkdir new

WORKDIR /new

RUN touch devopsclass
