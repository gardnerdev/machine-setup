#!/bin/sh
set -o errexit

echo "Installing kind..."
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64
chmod +x ./kind
mv ./kind $HOME/kind
echo "Success"