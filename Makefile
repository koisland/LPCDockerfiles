.PHONY: build

build:
	sudo docker build -t ${i}:latest -f images/${i}.dockerfile .
	sudo singularity build singularity/${i}.sif docker-daemon://${i}:latest

build_remote:
	bash scripts/build_remote.sh ${i}
