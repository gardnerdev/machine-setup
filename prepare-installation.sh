#!/bin/bash

echo "####################################################################################"
echo "################### UPDATING SYSTEM AND MAKING FILES EXECUTABLE ####################"
echo "####################################################################################"
echo " "

sudo apt-get update
for d in */ ; do
    echo "$d"
    cd ./"$d"
    chmod a+x setup.sh
    cd ..
done

#

# ######################
# #--- applications ---#
# ######################

# cd ./applications

# ./install-applications.sh &&

# cd ../


# ##############
# #--- zshrc ---#
# ##############

# cd ./zshrc

# ./setup-zshrc.sh


# ##############
# #--- node ---#
# ##############

# cd ./node

# ./setup-node.sh


# #############
# #--- git ---#
# #############

# cd ./git

# ./setup-git.sh



# ##############
# #- homebrew -#
# ##############

# cd ./homebrew
# ./setup.sh
# cd ./packages
# ./install-packages.sh
# cd ../..

# cd ./rust

# #################
# #--- rust ---#
# #################

# ./setup-rust.sh


# ################
# #--- vscode ---#
# ################

# cd ./vscode

# ./setup.sh


# echo "################################################################"
# echo "###################    T H E   E N D      ######################"
# echo "################################################################"
