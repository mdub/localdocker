#! /bin/sh

sed -i -e 's|http://archive.ubuntu.com/ubuntu |mirror://mirrors.ubuntu.com/mirrors.txt |g' /etc/apt/sources.list

apt-get -y -q update
DEBIAN_FRONTEND=noninteractive apt-get -y -q upgrade
