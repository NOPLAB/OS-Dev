FROM --platform=linux/amd64 debian:11
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    python3-distutils \
    qemu-system-gui \
    ovmf \
    # to build
    build-essential \
    llvm-7-dev \
    lld-7 \
    clang-7 \
    nasm \
    acpica-tools \
    uuid-dev \
    qemu-system-x86 \
    qemu-utils \
    xauth \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
