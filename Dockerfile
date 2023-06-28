
FROM ubuntu:latest

RUN yum update && yum install -y ubuntu

RUN mkdir new

WORKDIR /new

RUN touch devopsclass
