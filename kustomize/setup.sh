curl -s "https://raw.githubusercontent.com/\
kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
echo  "moving the downloaded kustomize binary to $PATH (e.g. /usr/local/bin)."
sudo mv kustomize /usr/local/bin