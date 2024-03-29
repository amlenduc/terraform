FROM ubuntu:18.04

ARG TERRAFORM_VERSION=0.12.2

RUN apt-get update \
 && apt-get install -y wget unzip \
 && rm -rf /var/lib/apt/lists/*

RUN echo "===> Installing Terraform ${TERRAFORM_VERSION}..." \
 && wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
 &&	unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
 && mv terraform /usr/local/bin/terraform \
 && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip