#! /bin/sh

dpkg -l lxc-docker > /dev/null 2>&1 || {
  wget -q -O - https://get.docker.io/ubuntu | sh
}

usermod -a -G docker vagrant

cat <<EOF > /etc/default/docker
DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

service docker restart
