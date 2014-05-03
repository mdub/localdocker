# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "Centos-6.4"
  config.vm.box_url = "http://mdub-vagrant-images.s3.amazonaws.com/Centos-6.4.box"

  config.vm.network :private_network, ip: "192.168.66.2"

  HOME = ENV['HOME']
  config.vm.synced_folder HOME, HOME

  config.vm.provision :shell, :path => "provision/docker.sh"

  config.vm.provision :shell, :inline => <<-'BASH'
    hostname localdocker
  BASH

end
