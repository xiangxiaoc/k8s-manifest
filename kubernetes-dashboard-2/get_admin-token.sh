#!/bin/bash

kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard-administrator | awk '{print $1}') | awk '{if($1=="token:"){print $2}}'
