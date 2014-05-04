hostname localdocker

grep localdocker /etc/hosts || cat >> /etc/hosts <<EOF

127.0.0.1 localdocker
EOF
