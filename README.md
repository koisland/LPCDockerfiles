# LPC Dockerfile Images
Dockerfiles to build SIF files for LPC use.

## Build
Local
```bash
make build i=nucflag
```

Dockerhub
```bash
make build_remote i=snakemake/snakemake:latest
```


## Run
```bash
apptainer run singularity/nucflag.sif -h
```

## TODO:
* [ ] Build in CI.
