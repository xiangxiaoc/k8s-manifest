### 部署 dashboard
```
kubectl create -f kubernetes-dashboard.yaml
```
使用 kubectl 代理 dashboard
```
kubectl proxy
```
访问 dashboard

http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

### 配置 kubeconfig
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
选择 kubeconfig 文件,路径如下：
```
Mac: $HOME/.kube/config
Win: %UserProfile%\.kube\config
```