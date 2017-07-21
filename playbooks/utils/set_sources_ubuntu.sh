#!/bin/bash
sudo -s <<EOF
echo "Setup sources.list..."
echo "deb http://10.204.217.141/ubuntu xenial main restricted universe multiverse" > /etc/apt/sources.list
echo "deb http://10.204.217.141/ubuntu xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
sudo apt-get update;
EOF

