FROM python:3.10
LABEL authors="tobym@supermicro.com"

ENV SSL_CERT_DIR=/etc/ssl/certs

RUN apt-get update && \
    apt-get install -y libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev && \
    update-ca-certificates --fresh && \
    pip3 install --upgrade pip && \
    pip install "huggingface_hub[cli]"

