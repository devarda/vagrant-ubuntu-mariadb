# -*- mode: ruby -*-
# vi: set ft=ruby :

require './vagrant-provision-reboot-plugin'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box = "trusty64"
  config.vm.box_url = "https://s3.amazonaws.com/joshfng_vagrant_boxes/v3/joshfng_virtualbox_ubuntu-14.04.box"
  config.vm.hostname = "mariadb"
  
  # Forward MariaDB port
  config.vm.network "forwarded_port", guest: 3306, host: 3306

  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM
    vb.customize ["modifyvm", :id,
                  "--name", "mariadb",
                  # Set available memory minimum
                  "--memory", "512",
                  # Enable DNS behind NAT
                  "--natdnshostresolver1", "on"]
  end
  
  config.vm.provision :shell, :path => "provision.sh"
  
  config.vm.provision :unix_reboot
end
