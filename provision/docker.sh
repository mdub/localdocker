#! /bin/sh

groupadd docker
usermod -a -G docker vagrant

cat <<EOF > /etc/default/docker
DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

curl -L http://get.docker.io/ubuntu | sh
