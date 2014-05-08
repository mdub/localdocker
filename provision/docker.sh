#! /bin/sh

groupadd docker
usermod -a -G docker vagrant

dpkg -l lxc-docker > /dev/null || (curl -L http://get.docker.io/ubuntu | sh)

cat <<EOF > /etc/default/docker
DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

service docker restart
