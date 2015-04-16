# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'
settings = YAML.load_file 'vagrantConfig.yml'

Vagrant.configure(2) do |config|
  config.vm.synced_folder ".", "/vagrant", type: "rsync",
    rsync__exclude: [".git/", 'node_modules/']
  config.vm.define "frontend" do |frontend|
    frontend.vm.synced_folder "sharedDir", "/vagrant"
    frontend.ssh.username = 'vagrant'
    frontend.vm.box = "ubuntu/trusty64"
    frontend.vm.network "public_network", ip: settings['frontend']['ip'], bridge: settings['bridge']
    frontend.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 2
    end
  end
  
  config.vm.provision :ansible do |ansible|
    ansible.verbose = "vvvv"
    ansible.playbook = "site.yml"
    ansible.host_key_checking = false
    ansible.inventory_path = "ansible_static_inventory"
    config.ssh.forward_agent = true
  end
end
