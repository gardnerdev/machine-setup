.ONESHELL:
all: prepare zsh brew kind kubectl krew rust node
.PHONY: zsh brew ubectl kind krew rust node kind-cluster docker

TEMPLATES_DIR = .


prepare:
	chmod a+x prepare-installation.sh
	./prepare-installation.sh


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

kind:
	cd ./kind
	./setup.sh

kind-cluster:
	cd ./kind
	chmod -R a+x cluster
	cd cluster
	./setup.sh
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