#!/bin/sh
yum install epel-release puppet -y
yum update -y
yum install puppet -y
source /root/.bashrc
source /root/.bash_profile
cat >> /etc/hosts <<EOF
192.168.33.10 client.server.com
192.168.33.20 server.server.com
EOF

