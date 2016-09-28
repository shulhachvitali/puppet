#!/bin/bash
rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
cat >> /etc/hosts <<EOF
192.168.33.170 puppet1.server.com
EOF
