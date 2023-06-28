
FROM ubuntu:latest

RUN sudo yum update && sudo yum install -y ubuntu

RUN mkdir new

WORKDIR /new

RUN touch devopsclass
