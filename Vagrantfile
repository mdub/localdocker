# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.network :private_network, ip: "192.168.66.2"

  HOME = ENV['HOME']
  config.vm.synced_folder HOME, HOME

  # requires the "vagrant-persistent-storage" plugin
  config.persistent_storage.enabled = true
  config.persistent_storage.location = File.expand_path("../var-lib-docker.vmdk", __FILE__)
  config.persistent_storage.size = 40000
  config.persistent_storage.mountname = 'docker'
  config.persistent_storage.filesystem = 'ext4'
  config.persistent_storage.mountpoint = '/var/lib/docker'


  config.vm.provision :shell, :path => "provision/hostname.sh"
  config.vm.provision :shell, :path => "provision/apt.sh"
  config.vm.provision :shell, :path => "provision/docker.sh"

end
