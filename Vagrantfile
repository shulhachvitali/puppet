# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
config.vm.provision "shell", path: "puppet3.sh" 
config.vm.define "puppet4" do |puppet4|
    puppet4.vm.box = "centos/7"
    puppet4.vm.hostname = "client.server.com"
    puppet4.vm.network "private_network", ip: "192.168.33.10"
    puppet4.vm.provider "virtualbox" do |cfg|
      cfg.name = "puppet4-cfg"
      cfg.cpus = 1
      cfg.memory = 3128
   end
    
  end
config.vm.define "puppet3" do |puppet3|
    puppet3.vm.box = "centos/7"
    puppet3.vm.hostname = "server.server.com"
    puppet3.vm.network "private_network", ip: "192.168.33.20"
    puppet3.vm.provider "virtualbox" do |cfg|
      cfg.name = "puppet3-cfg"
      cfg.cpus = 1
      cfg.memory = 3128
   end
    
  end  
config.vm.provision "puppet" do |puppet|
    puppet.module_path = "modules" 
end
end

