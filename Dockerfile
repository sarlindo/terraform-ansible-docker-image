FROM ubuntu:16.04 
LABEL maintainer="sarlindo@hotmail.com"

ENV TERRAFORM_VERSION 0.11.7
ENV ANSIBLE_VERSION 2.5.2

RUN apt-get update && apt-get install -y \
       unzip \
       wget \
       python-pip

RUN pip install ansible=="${ANSIBLE_VERSION}"
RUN pip install awscli

RUN wget -q -O /terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
    unzip /terraform.zip -d /usr/local/bin 
