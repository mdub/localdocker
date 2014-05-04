#! /bin/sh

wget -q -O - https://get.docker.io/ubuntu | sh

cat <<EOF > /etc/default/docker
DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

service docker restart

usermod -a -G docker vagrant
