# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos65_64"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"

  config.vm.network :private_network, ip: "192.168.66.2"

  HOME = ENV['HOME']
  config.vm.synced_folder HOME, HOME

  config.vm.provision :shell, :path => "provision/docker.sh"

  config.vm.provision :shell, :inline => <<-'BASH'
    hostname localdocker
  BASH

end
