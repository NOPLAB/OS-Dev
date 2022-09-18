FROM debian:11
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    qemu ovmf gcc make nasm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
