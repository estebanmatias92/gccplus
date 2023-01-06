FROM gcc:11 as base

LABEL description="Installing dependencies..."

RUN apt-get update && apt-get install -y --no-install-recommends \
        binutils \
        cmake \
        libboost-dev \
        ninja-build \
    && apt-get clean