#! /bin/sh

set -e

getent group docker || groupadd docker
usermod -a -G docker vagrant

rm -fr /etc/default/docker

wget -q -O - http://get.docker.io/ubuntu | sh

cat <<EOF > /etc/default/docker
DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

service docker restart
