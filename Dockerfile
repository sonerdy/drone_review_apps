FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget

# Install doctl (Digital Ocean CLI)
WORKDIR /root
RUN wget https://github.com/digitalocean/doctl/releases/download/v1.9.0/doctl-1.9.0-linux-amd64.tar.gz
RUN tar -xzf /root/doctl-1.9.0-linux-amd64.tar.gz
RUN mv /root/doctl /usr/local/bin

WORKDIR /

ADD ./entrypoint.sh /entrypoint.sh
ADD ./review_app.yml /review_app.yml

ENTRYPOINT /entrypoint.sh

