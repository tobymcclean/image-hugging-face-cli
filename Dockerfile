FROM python:3.10
LABEL authors="tobym@supermicro.com"

ENV SSL_CERT_DIR=/etc/ssl/certs

RUN apt-get update && \
    apt-get install -y libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev && \
    apt-get install -y git-lfs && \
    apt-get clean && \
    update-ca-certificates --fresh && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade certifi && \
    pip3 install "huggingface_hub[cli]" && \
    git config --global credential.helper store

WORKDIR /data
