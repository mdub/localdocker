# localdocker

This is a Vagrant-based Docker host, for local development.

## Prerequisites

You will need Vagrant 1.5, for it's Docker support.

You'll also need the "vagrant-persistent-storage" plugin. This is used to create a persistent `/var/lib/docker` volume that survives VM rebuilds.  You can install it with

    $ vagrant plugin install vagrant-persistent-storage

## Usage

Type `vagrant up` to bring the VM up.

The VM gets IP address 192.168.66.2.  Any mapped ports should be visible on that address (rather than localhost).  You might also wish to set up an entry in `/etc/hosts`:

    192.168.66.2 localdocker

To communicate with the Docker daemon from your host machine, set:

    $ export DOCKER_HOST=tcp://192.168.66.2:4243

Your home directory will be shared with the VM, so mapping volumes should mostly work, as long as they're within $HOME.
