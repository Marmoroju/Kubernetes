#/bin/sh

sudo apt-get -y update
sudo apt-get -y upgrade

#Instalação do Kubectl
echo '###############################'
echo 'Instalação do Kubectl'
echo '###############################'

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

#Instalação do Kind
echo '###############################'
echo 'Instalação do kind'
echo '###############################'

curl -Lo ./kind curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind

#Instalação do Minikube
echo '###############################'
echo 'Instalação do Minikube'
echo '###############################'

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

chmod +x ./minikube

sudo mv ./minikube /usr/local/bin/minikube

minikube version

#Instalação do Docker
echo '###############################'
echo 'Instalação do Docker'
echo '###############################'

curl -fsSL https://get.docker.com | bash

sudo systemctl start docker

sudo systemctl enable docker

#Criação de cluster através do Kind
echo '###############################'
echo 'Criação do cluster'
echo '###############################'

sudo kind create cluster





