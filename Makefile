.ONESHELL:
SHELL=bash

test:
	set -e
	helm version
	echo "->helm lint"
	helm lint foo
	echo "->helm dependency build"
	helm dependency build foo # --skip-refresh works only after helm 3.4

install-helm-3.3.4:
	./get_helm.sh --version v3.3.4 # lint: last ok

install-helm-3.4.0:
	./get_helm.sh --version v3.4.0 # lint: first fail 


install-helm-latest:
	./get_helm.sh

update-get-helm:
	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
	chmod 700 get_helm.sh