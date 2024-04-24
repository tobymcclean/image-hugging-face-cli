FROM python:3.10
LABEL authors="tobym@supermicro.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev && \
    pip3 install --upgrade pip && \
    pip install "huggingface_hub[cli]"

