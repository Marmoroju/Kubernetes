Repositorio criado com o intuito de iniciar os estudos de KUBERNETES atraves do KIND e/ou MINIKUBE.

Para utilizar este repositorio sera preciso instalar o VAGRANT e VIRTUALBOX.

Link pra instalacao do VAGRANT: 

-> https://developer.hashicorp.com/vagrant/install#Windows

Link para instalacao do Virtual Box versao 6.1 (Caso o Vagrant nao funcione com as versoes mais atuais do Virtual Box)

-> https://www.virtualbox.org/wiki/Download_Old_Builds_6_1

Link para instalacao do Virtual Box versao 7.0.12

-> https://www.oracle.com/br/virtualization/technologies/vm/downloads/virtualbox-downloads.html#vbox

Apos fazer git clone e subir a VM deve se atentar aos arquivos "after_steps.txt" e "habilitar-minikube-VTxAMD-V.txt" que servem de instrucao 
para finalizar a configuracao dos servicos que por padrao nao vem habilitado.

Assim que terminar o processo do "vagrant up" e a VM estiver disponivel aparecera em sua tela um texto do que seguir para poder habilitar o MINIKUBE,
caso queira prosseguir apenas com o KIND, apenas ignore. (Porem recomendo que os estudos sejam realizados atraves do MINIKUBE)

---
Assim que conectar na VM e tentar executar os comandos $root@hostname 'kubectl get pods' ou 'kubectl get nodes' sem iniciar o Cluster, 
recebera o erro abaixo:

    -> E0107 13:41:58.114786   22179 memcache.go:265] 
    couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": 
    dial tcp 127.0.0.1:8080: connect: connection refused
    The connection to the server localhost:8080 was refused - 
    did you specify the right host or port?

isso porque NAO foi iniado cluster algum. Sendo assim, voce devera iniciar o cluster pelo KIND ou MINIKUBE.


