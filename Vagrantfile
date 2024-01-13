Vagrant.configure("2") do |config|
    config.vm.define "k8s" do |vm_k8s|
        vm_k8s.vm.box = "ubuntu/focal64"
        vm_k8s.vm.network "private_network", ip: "192.168.56.5"
        vm_k8s.vm.hostname = "k8s"
        vm_k8s.vm.provision "shell", path: "provision.sh"
        vm_k8s.vm.provision "shell", inline: 'cat after_steps.txt'             
        vm_k8s.vm.provider "virtualbox" do |v|
            v.memory = 2048
            v.cpus = 2
        end
    end
end