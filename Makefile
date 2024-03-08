MAKEFLAGS += --no-print-directory

.DEFAULT_GOAL := help

.PHONY: build clean deploy help push quality test

NAME := carlosrabelo/de-vscode

help: ## Show available targets
	@echo "de-vscode - Available targets"
	@echo ""
	@grep -hE '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*## "} {printf "  %-15s %s\n", $$1, $$2}'

build: ## Build Docker image
	@./.make/build.sh

push: build ## Push Docker images to registry
	@./.make/push.sh

deploy: push ## Alias for push (backward compat)

test: build ## Run tests on the image
	@./.make/test.sh

quality: ## Run all quality checks
	@./.make/quality.sh

clean: ## Remove build artifacts
	@./.make/clean.sh
