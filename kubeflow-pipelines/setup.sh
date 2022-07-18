# env/platform-agnostic-pns hasn't been publically released, so you will install it from master
export PIPELINE_VERSION=1.8.2
kubectl apply -k "github.com/kubeflow/pipelines/manifests/kustomize/cluster-scoped-resources?ref=$PIPELINE_VERSION"
kubectl wait --for condition=established --timeout=360s crd/applications.app.k8s.io
kubectl apply -k "github.com/kubeflow/pipelines/manifests/kustomize/env/platform-agnostic-emissary?ref=$PIPELINE_VERSION"
kubectl ns kubeflow
while [ "$(kubectl get pods -l=app='ml-pipeline-ui' -o jsonpath='{.items[*].status.containerStatuses[0].ready}')" != "true" ]; do
    sleep 15
    echo "Waiting for ml-pipeline-ui to be ready."
done
kubectl port-forward -n kubeflow svc/ml-pipeline-ui 8080:80