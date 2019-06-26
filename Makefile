SHELL = /bin/bash -o pipefail

APP_NAME = go-8
BIN_DIR = $(CURDIR)/bin
APP = $(BIN_DIR)/$(APP_NAME)

dependencies:
	cd $(CURDIR) && mkdir -p $(BIN_DIR)

build: dependencies
	cd $(CURDIR) && go mod vendor -v
	cd $(CURDIR) && go build -o $(APP) -v -x -mod vendor
