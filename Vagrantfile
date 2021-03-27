# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "geerlingguy/debian10"
  config.ssh.insert_key = false
  config.vm.provider "virtualbox"

  config.vm.provider :virtualbox do |v|
    v.memory = 2048
    v.cpus = 2
    v.linked_clone = true
    v.customize ['modifyvm', :id, '--audio', 'none']
  end

  # Define four VMs with static private IP addresses.
  boxes = [
    { :name => "kubetest", :ip => "192.168.77.55" }
  ]

  # Configure each of the VMs.
  boxes.each_with_index do |opts, index|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name] + ".pidramble.com"
      config.vm.network :private_network, ip: opts[:ip]      
    end
  end

end