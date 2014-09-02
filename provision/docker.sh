#! /bin/sh

set -e

getent group docker || groupadd docker
usermod -a -G docker vagrant

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c 'echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list'
apt-get -y -q update
apt-get -y -q install lxc-docker linux-image-extra-`uname --kernel-release`

cat <<EOF > /etc/default/docker
DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

service docker restart

cat <<EOF > /etc/logrotate.d/docker
/var/lib/docker/containers/*/*-json.log {
  rotate 2
  daily
  compress
  missingok
  notifempty
  copytruncate
}
EOF
