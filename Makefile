IMAGE := 2026-11-24-docker

.PHONY: help build run

help: ## List the targets
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "} {printf "  %-8s %s\n", $$1, $$2}'

build: ## Build the image from the Dockerfile
	docker build -t $(IMAGE) .

run: ## Start an interactive R session in the container
	docker run --rm -it $(IMAGE)
