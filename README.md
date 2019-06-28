## 在 windows 上通过 Hyper-V 使用 Minikube 创建 Kubernetes 集群
```ps1
minikube.exe start --vm-driver="hyperv" --hyperv-virtual-switch="Default Switch" --memory=4096 --registry-mirror=https://registry.docker-cn.com --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers --image-mirror-country=cn
```