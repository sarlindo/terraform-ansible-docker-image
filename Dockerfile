FROM ubuntu:16.04 
LABEL maintainer="sarlindo@hotmail.com"

ENV TERRAFORM_VERSION 0.11.7
ENV ANSIBLE_VERSION 2.5.2

RUN apt-get -y update
RUN apt-get -y install unzip
RUN apt-get -y install wget
RUN apt-get -y install python-pip
RUN pip install ansible==2.5.2

RUN wget -q -O /terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
    unzip /terraform.zip -d /usr/local/bin 

ENTRYPOINT ["bash"]
