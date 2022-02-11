# Project namespace: wshihadeh by default
NAMESPACE ?= wshihadeh
# Docker registry
REGISTRY ?= index.docker.io

IMAGE ?= ${REGISTRY}/${NAMESPACE}/ldap:withgithubdata


# Make sure recipes are always executed
.PHONY: build push clean

# Build and tag Docker image
build:
	@echo "Building Docker Images ..."
	docker build -t ${IMAGE} .

# Push Docker image
push:
	@echo "Pushing Docker images ..."
	docker push ${IMAGE}

release: build push clean

# Clean up the created images locally and remove rvm gemset
clean:
	@echo "Cleaning Docker images ..."
	docker rmi -f ${IMAGE}
