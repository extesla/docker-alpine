.PHONY: help list build

MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
ROOT_DIR := $(dir $(MAKEFILE_PATH))

default: help
list: help
help:
	@echo "Usage make [COMMAND] args=\"[ARGS]\""
	@echo ""
	@echo "Commands"
	@echo "  build                 Build docker images."
	@echo "  clean                 Prune docker images and containers."
	@echo ""

build:
	@/bin/sh ${ROOT_DIR}/images/alpine-3.6/setup.sh
	@/bin/sh ${ROOT_DIR}/images/alpine-3.7/setup.sh
	@/bin/sh ${ROOT_DIR}/images/alpine-3.8/setup.sh
	@/bin/sh ${ROOT_DIR}/images/alpine-3.9/setup.sh
