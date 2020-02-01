FROM ubuntu:latest

RUN apt-get update -y && apt-get install curl -y

# Setup node 12
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get install nodejs -y

WORKDIR /usr/src/app

CMD ["bash", "run.sh"]

