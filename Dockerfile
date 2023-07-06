FROM centos

RUN touch /tmp/devops


ENTRYPOINT ["echo", "hello world"]
