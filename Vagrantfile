# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  # config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"

  config.vm.network :private_network, ip: "192.168.66.2"

  HOME = ENV['HOME']
  config.vm.synced_folder HOME, HOME

  config.persistent_storage.enabled = true
  config.persistent_storage.location = File.expand_path("../docker-cache.vmdk", __FILE__)
  config.persistent_storage.size = 30000
  config.persistent_storage.mountname = 'docker'
  config.persistent_storage.filesystem = 'ext4'
  config.persistent_storage.mountpoint = '/var/lib/docker'

  config.vm.provision :shell, :path => "provision/apt.sh"
  config.vm.provision :shell, :path => "provision/docker.sh"

  # config.vm.provision :shell, :inline => <<-'BASH'
  #   hostname localdocker
  # BASH

end
