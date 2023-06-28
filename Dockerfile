
FROM ubuntu:latest

RUN yum update && yum install ubuntu -y

RUN mkdir new

WORKDIR /new

RUN touch devopsclass
