# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, :path => "provisioning/manifests/bootstrap.sh"
  config.vm.network :forwarded_port, host: 4567, guest: 80

  config.vm.hostname = "localdev"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "provisioning/manifests"
    puppet.manifest_file  = "site.pp"
    puppet.module_path = ["provisioning/manifests/modules"]
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

end