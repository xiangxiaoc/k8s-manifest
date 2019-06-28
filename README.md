## 在 windows 上通过 Hyper-V 使用 Minikube 创建 Kubernetes 集群
确认你的 minikube.exe 在你的 PATH 里
```ps1
minikube start --vm-driver="hyperv" --hyperv-virtual-switch="Default Switch" --memory=4096 --registry-mirror=https://registry.docker-cn.com --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers --image-mirror-country=cn
```