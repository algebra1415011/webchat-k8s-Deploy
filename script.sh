#!/bin/bash

echo  "<------User Running Process $USER ----->"

echo '<------- Fetching webchat app from github ----------->'

git clone https://github.com/dhaval-panjwani/Group-Chat-With-WebSockets.git

echo '<------- Fetching Dockerfile from github ----------->'

git clone https://github.com/algebra1415011/webchat-k8s-Deploy.git

echo "<-----------Current Directory-------------->"
echo $PWD
echo '<--------Building dockerimage------------------------>'

cp ./webchat-k8s-Deploy/Dockerfile Dockerfile

docker build -t webchatapp:1.0 .

echo '<---------Deploying image on the cluster------------>'
kubectl apply -f ./webchat-k8s-Deploy/manifests

# docker tag webchatapp:1.0 algebra1415011/webchatapp:1.0


# docker push algebra1415011/webchatapp:1.0
