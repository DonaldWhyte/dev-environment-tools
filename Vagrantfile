# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # BOX
  # ---
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = true

  # GENERAL CONFIG
  # --------------
  # Access "localhost:8080" from host to access port 80 on guest machine
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # Use public or private network, depending on sensitivity of data
  # on your box
  config.vm.network "public_network" #, ip: "DESIRED_STATIC_IP"
  # config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "vagrant_data", "/vagrant_data"

  config.ssh.forward_agent = true

  # PROVIDER
  # --------
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = "4096" # in MB
  end

  # PROVISIONING
  # ------------
  # TODO: use Chef Solo provisioner at some point
  config.vm.provision "shell", path: "shell/bootstrap.sh", privileged: false
end
