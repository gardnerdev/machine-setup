.ONESHELL:
all: prepare zsh kubectl krew rust brew
.PHONY: zsh brew ubectl krew rust

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
krew:
	cd ./krew
	./setup.sh

kubectl:
	cd ./kubectl
	./setup.sh

rust:
	cd ./rust
	./setup.sh

zsh:
	cd ./zsh
	./setup.sh