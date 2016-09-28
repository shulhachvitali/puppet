#!/bin/bash
rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
cat >> /etc/hosts <<EOF
192.168.33.175 puppet2.server.com
EOF

