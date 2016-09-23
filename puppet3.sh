#!/bin/sh
#yum update -y
yum install epel-release puppet -y
yum install puppet -y
source /root/.bashrc
source /root/.bash_profile
#rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
cat >> /etc/hosts <<EOF
192.168.33.10 client.server.com
192.168.33.20 server.server.com
EOF

