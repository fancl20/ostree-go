
.PHONY: help deps lint test install-tools

help:
	@echo "Targets:"
	@echo " - deps: Install required dependencies for building"
	@echo " - install-tools: install tools"
	@echo " - lint: Run golint"
	@echo " - test: Run unittests"

install-tools:
	go get -u github.com/golang/lint/golint

update:
	go get -u ./... && go mod tidy

lint:
	golint .


test:
	go list ./... | xargs go test -v
