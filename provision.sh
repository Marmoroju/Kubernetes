#/bin/sh

sudo apt-get -y update
sudo apt-get -y upgrade

#INSTALAÇÃO DO KUBECTL
echo '##############################'
echo '### INSTALAÇÃO DO KUBECTL ####'   
echo '##############################'

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

#INSTALAÇÃO DO KIND
echo '##############################'
echo '##### INSTALAÇÃO DO KIND #####'   
echo '##############################'

curl -Lo ./kind curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind

#INSTALAÇÃO DO MINIKUBE
echo '##############################'
echo '### INSTALAÇÃO DO MINIKUBE ###'   
echo '##############################'

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

chmod +x ./minikube

sudo mv ./minikube /usr/local/bin/minikube

sudo apt install  -y conntrack

minikube version

#INSTALAÇÃO DO DOCKER
echo '##############################'
echo '#### INSTALAÇÃO DO DOCKER ####'   
echo '##############################'

curl -fsSL https://get.docker.com | bash

sudo systemctl start docker

sudo systemctl enable docker