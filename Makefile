.ONESHELL:
SHELL=bash

test:
	set -e
	helm version
	helm lint foo
	helm dependency build foo # --skip-refresh after helm 3.4

install-helm-3.3.1:
	./get_helm.sh --version v3.3.1 # repo add working

install-helm-3.3.3:
	./get_helm.sh --version v3.3.3 # ok

install-helm-3.3.4:
	./get_helm.sh --version v3.3.4 # ok

install-helm-3.4.0:
	./get_helm.sh --version v3.4.0 # fail w/o dependencies)

install-helm-3.5.0:
	./get_helm.sh --version v3.5.0

install-helm-3.8.1:
	./get_helm.sh --version v3.8.1

update-get-helm:
	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
	chmod 700 get_helm.sh