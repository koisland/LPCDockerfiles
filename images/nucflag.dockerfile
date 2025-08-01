FROM python:3.12.1-slim-bullseye

WORKDIR /home

RUN apt update && \
    apt install \
        build-essential \
        zlib1g-dev \
        libbz2-dev \
        liblzma-dev \
        -y

RUN pip install nucflag && \
    pip install pysam --force-reinstall --no-binary :all:

ENTRYPOINT [ nucflag ]
