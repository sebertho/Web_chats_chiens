#!/bin/bash

#Création du namespace
kubectl create namespace global-vote-app
#Création des deployments
deployments=("deployment-redis.yml","deployment-vote-app.yml","deployment-result-app.yml","deployment-worker-app.yml","deployment-postgres.yml") 
for e in $deployments
do
    kubectl create -f ${e}
done 

#Création de services
services=("service-postgres.yml","service-redis.yml","service-vote.yml","service-result.yml")
for s in  $services
do 
    kubectl create -f ${s}
done 