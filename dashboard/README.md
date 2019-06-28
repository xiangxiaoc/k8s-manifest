对于Mac环境
```sh
KUBE_CONTEXT="minikube"
# KUBE_CONTEXT=docker-for-desktop
TOKEN=$(kubectl -n kube-system describe secret default| awk '$1=="token:"{print $2}')
kubectl config set-credentials "${KUBE_CONTEXT}" --token="${TOKEN}"
```
对于Windows环境
```ps1
$KUBE_CONTEXT="minikube"
# $KUBE_CONTEXT="docker-for-desktop"
$TOKEN=((kubectl -n kube-system describe secret default | Select-String "token:") -split " +")[1]
kubectl config set-credentials "${KUBE_CONTEXT}" --token="${TOKEN}"
```