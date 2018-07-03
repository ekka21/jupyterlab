.PHONY: build
build: ## Build docker image locally
	docker build -t ek/jupyterlab:latest .

.PHONY: up
up: ## Bring up a container name "jupyterlab"
	docker run --name jupyterlab -v $(PWD)/src:/app -d -p 8888:8888 ek/jupyterlab:latest jupyter lab

.PHONY: tag
tag: ## Tag docker before pushing to private repo
	docker tag SRC DEST

.PHONY: push
push: ## Push a docker image to remote repo
	docker push private repo

.PHONY: h help
h: help
help: ## Help me!
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

