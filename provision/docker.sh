#! /bin/sh

rpm --upgrade --force http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
yum install -y docker-io
chkconfig docker on
service docker start
