#! /bin/sh

cat <<EOF > /etc/apt/sources.list
# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://au.archive.ubuntu.com/ubuntu/ precise main restricted
deb-src http://au.archive.ubuntu.com/ubuntu/ precise main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://au.archive.ubuntu.com/ubuntu/ precise-updates main restricted
deb-src http://au.archive.ubuntu.com/ubuntu/ precise-updates main restricted

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://au.archive.ubuntu.com/ubuntu/ precise universe
deb-src http://au.archive.ubuntu.com/ubuntu/ precise universe
deb http://au.archive.ubuntu.com/ubuntu/ precise-updates universe
deb-src http://au.archive.ubuntu.com/ubuntu/ precise-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team, and may not be under a free licence. Please satisfy yourself as to
## your rights to use the software. Also, please note that software in
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
# deb http://au.archive.ubuntu.com/ubuntu/ precise multiverse
# deb-src http://au.archive.ubuntu.com/ubuntu/ precise multiverse
# deb http://au.archive.ubuntu.com/ubuntu/ precise-updates multiverse
# deb-src http://au.archive.ubuntu.com/ubuntu/ precise-updates multiverse

deb http://security.ubuntu.com/ubuntu precise-security main restricted
deb-src http://security.ubuntu.com/ubuntu precise-security main restricted
deb http://security.ubuntu.com/ubuntu precise-security universe
deb-src http://security.ubuntu.com/ubuntu precise-security universe
# deb http://security.ubuntu.com/ubuntu precise-security multiverse
# deb-src http://security.ubuntu.com/ubuntu precise-security multiverse
EOF