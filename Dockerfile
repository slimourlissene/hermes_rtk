FROM nousresearch/hermes-agent:latest

USER root

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

RUN rtk init -g hermes