FROM python:3.12.1-slim-bullseye

WORKDIR /home

RUN apt update && \
    apt install \
        build-essential \
        zlib1g-dev \
        libbz2-dev \
        liblzma-dev \
        libcairo2-dev \
        -y

RUN pip install ModDotPlot --no-binary pysam

ENTRYPOINT [ "moddotplot" ]
