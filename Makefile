.ONESHELL:
all: prepare zsh oh-my-zsh zsh-plugins brew kind kubectl krew rust node-npm kubeflow-pipelines kubeflow brave
.PHONY: prepare zsh brew brave ubectl kind krew rust node-npm kind-create docker kind-delete kind-ingress kind-loadbalancer kubeflow-pipelines kubeflow poetry python npm-packages vscode

TEMPLATES_DIR = .


prepare:
	chmod a+x prepare.sh
	./prepare.sh


brave:
	cd ./brave
	./setup.sh

brew:
	cd ./brew
	./setup.sh
	cd ./packages
	./setup.sh

docker:
	cd ./docker
	./setup.sh

krew:
	cd ./krew
	./setup.sh

kubectl:
	cd ./kubectl
	./setup.sh

kubeflow-pipelines:
	cd ./kubeflow-pipelines
	./setup.sh

kind:
	cd ./kind
	./setup.sh

kind-create:
	cd ./kind
	chmod -R a+x cluster
	cd cluster
	./setup.sh
	echo "testing local registry"
	./test-local-registry.sh
	echo "testing setup"
	kubectl apply -f pod.yaml


kind-delete:
	cd ./kind/cluster
	./delete.sh

kind-ingress:
	cd ./kind/ingress
	./setup.sh
	kubectl apply -f ingress.yaml

kind-loadbalancer:
	cd ./kind/loadbalancer
	./metalb.sh
	kubectl apply -f configmap.yaml
	kubectl apply -f loadbalancer.yaml
	./watch.sh

kubeflow:
	cd ./kubeflow
	./setup.sh
	cd ./manifest
	git checkout v1.3.0
	while ! kustomize build example | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done

node-npm:
	cd ./node
	sudo ./setup.sh

npm-packages:
	cd ./node/packages
	sudo ./setup.sh

rust:
	cd ./rust
	./setup.sh

zsh:
	cd ./zsh
	./setup.sh

oh-my-zsh:
	cd ./zsh
	./install.sh

zsh-plugins:
	cd ./zsh
	./plugins.sh
	
vscode:
	cd ./vscode
	./setup.sh

poetry:
	cd ./poetry
	./setup.sh
	
python:
	cd ./python
	./setup.sh
