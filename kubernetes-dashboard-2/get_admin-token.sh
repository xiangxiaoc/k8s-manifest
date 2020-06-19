#!/bin/bash

service_account="kubernetes-dashboard-administrator"
secret_name=$(kubectl -n kubernetes-dashboard get secret | grep $service_account | awk '{print $1}')
kubectl -n kubernetes-dashboard describe secret "$secret_name" | awk '{if($1=="token:"){print $2}}'
