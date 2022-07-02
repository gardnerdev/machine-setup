echo "####### Downloading latest release ######"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "Download the kubectl checksum file:"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "####### Validating installation #######"
echo "$(cat kubectl.sha256) kubectl" | sha256sum --check

echo "####### Installation #######"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo "####### Verification #######"
kubectl version --client
