# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.hostname = "infra-vm"

  config.vm.network "private_network", ip: "192.168.56.10"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "prueba_infraestructura"
    vb.memory = 1024
    vb.cpus = 1
  end

  # Provision previo: preparar el sistema para Ansible
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y python3 python3-apt
  SHELL

  # Ansible local
  config.vm.provision "ansible_local" do |ansible|
    ansible.install = true
    ansible.install_mode = "pip3"
    ansible.playbook = "/vagrant/ansible/playbook.yml"
  end
end
