#!/bin/bash

set -euo pipefail

image=$1

image_version=$(basename "${image}")
name=$(echo $image_version | awk  -v DELIM=":" '{split($1, res, DELIM); print res[1]}')
version=$(echo $image_version | awk  -v DELIM=":" '{split($1, res, DELIM); print res[2]}')

sudo singularity build singularity/${name}_${version}.sif docker://${image}
