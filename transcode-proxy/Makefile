IMAGE_NAME = transcode-proxy
NAMESPACE = bbxnet
VERSION = $(shell git rev-parse --short HEAD )

DOCKER_BUILD_CONTEXT ?= .
DOCKER_UPDATE_BASE ?= false

DOCKER = @docker

.PHONY: build
build:
	$(DOCKER) image build $(DOCKER_BUILD_OPTIONS) -t "$(NAMESPACE)/$(IMAGE_NAME):$(VERSION)" -f "Dockerfile" "$(DOCKER_BUILD_CONTEXT)"
