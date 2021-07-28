#!/bin/bash

#Création des deployments
deployments=("redis","vote-app","result-app","worker-app","postgres") 
for e in $deployments
do
    kubectl delete deployment ${e} -n=global-vote-app
done 

#Création de services
services=("db","redis","vote","result")
for s in  $services
do 
    kubectl delete service ${s} -n=global-vote-app
done 