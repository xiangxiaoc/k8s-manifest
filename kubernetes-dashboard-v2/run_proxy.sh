#!/bin/bash

echo "Please access http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/"
echo
echo "admin token:"
bash get-admin_token.sh
echo
kubectl proxy
