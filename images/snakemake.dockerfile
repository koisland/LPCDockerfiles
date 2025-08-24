FROM python:3.12.1-slim-bullseye

WORKDIR /home

RUN pip install snakemake==9.5.0

ENTRYPOINT [ "snakemake" ]
