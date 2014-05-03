#! /bin/sh

cat <<EOF > /etc/sysconfig/docker
# /etc/sysconfig/docker
#
# Other arguments to pass to the docker daemon process
# These will be parsed by the sysv initscript and appended
# to the arguments list passed to docker -d

other_args="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"
EOF

rpm --upgrade --force http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
yum install -y docker-io
chkconfig docker on
service docker start

usermod -a -G docker vagrant
