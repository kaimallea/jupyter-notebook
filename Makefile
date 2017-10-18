IMAGE_NAME ?= kais-jupyter-notebook:latest
NOTEBOOKS ?= $(CURDIR)

all: image run

image:
	docker build . -t $(IMAGE_NAME)

run:
	docker run \
		-it \
		--rm \
		-p 8888:8888 \
		-v ~/.config/gcloud:/home/jovyan/.config/gcloud \
		-v $(NOTEBOOKS):/home/jovyan/work/ \
		$(IMAGE_NAME)

.PHONY: all image run