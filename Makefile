.ONESHELL:
all: prepare zsh brew kind kubectl krew rust node kubeflow-pipelines
.PHONY: prepare zsh brew ubectl kind krew rust node kind-create docker kind-delete kind-ingress kind-loadbalancer kubeflow-pipelines

TEMPLATES_DIR = .


prepare:
	chmod a+x prepare.sh
	./prepare.sh


# install-all:
# 	for d in */ ; do
#     echo "$d"
#     cd ./"$d"
#     chmod a+x setup.sh
# 	./setup.sh
#     cd ..
# 	done

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

node:
	cd ./node
	./setup.sh

rust:
	cd ./rust
	./setup.sh

zsh:
	cd ./zsh
	./setup.sh

vscode:
	cd ./vscode
	./setup.sh