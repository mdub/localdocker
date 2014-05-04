#! /bin/sh

cat <<EOF > /etc/apt/sources.list
deb http://au.archive.ubuntu.com/ubuntu/ precise main restricted
deb http://au.archive.ubuntu.com/ubuntu/ precise-updates main restricted

deb http://au.archive.ubuntu.com/ubuntu/ precise universe
deb http://au.archive.ubuntu.com/ubuntu/ precise-updates universe

deb http://security.ubuntu.com/ubuntu precise-security main restricted
deb http://security.ubuntu.com/ubuntu precise-security universe
EOF
