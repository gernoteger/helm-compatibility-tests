.ONESHELL:
SHELL=bash

test:
	set -e
	helm lint foo
	helm dependency build --skip-refresh foo

clean-helm-cache:
	rm -rf ~/.helm/cache/archive/*
	rm -rf ~/.helm/repository/cache/*
