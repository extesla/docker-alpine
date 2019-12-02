.PHONY: help list build

MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
ROOT_DIR := $(dir $(MAKEFILE_PATH))

default: help
list: help
help:
	@echo "Usage make [COMMAND] args=\"[ARGS]\""
	@echo ""
	@echo "Commands"
	@echo "  build                 Build all docker images."
	@echo "  clean                 Prune docker images and containers."
	@echo ""

build: .build-3.6 .build-3.7 .build-3.8 .build-3.9 .build-3.10 .build-latest

.PHONY: .build-3.6
.build-3.6:
	@/bin/sh ${ROOT_DIR}/images/alpine-3.6/setup.sh

.PHONY: .build-3.7
.build-3.7:
	@/bin/sh ${ROOT_DIR}/images/alpine-3.7/setup.sh

.PHONY: .build-3.8
.build-3.8:
	@/bin/sh ${ROOT_DIR}/images/alpine-3.8/setup.sh

.PHONY: .build-3.9
.build-3.9:
	@/bin/sh ${ROOT_DIR}/images/alpine-3.9/setup.sh

.PHONY: .build-3.10
.build-3.10:
	@/bin/sh ${ROOT_DIR}/images/alpine-3.10/setup.sh

.PHONY: .build-latest
.build-latest:
	@/bin/sh ${ROOT_DIR}/images/alpine-latest/setup.sh