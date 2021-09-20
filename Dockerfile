# Run from top of vpp repo with command:
# docker build -f extras/docker/build/Dockerfile.bionic .
FROM ubuntu:bionic
RUN apt-get update && \
    apt-get -y install -y --no-install-recommends \
        build-essential \
        sudo \
        python3 \
        python3-pip \
        vim \
        && rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip
RUN python3 -m pip install --upgrade setuptools
COPY requirements.txt /
RUN python3 -m pip install -r /requirements.txt
COPY src/ /app
WORKDIR /app
CMD ["create_infra.py"]

