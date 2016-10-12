#!/bin/bash

set -e

wget http://bld-artifactory:8081/artifactory/formation-apt/pool/nightly/boost-1.55_1.55_amd64.deb
sudo -s << EOF
echo $USER
dpkg -i boost-1.55_1.55_amd64.deb
EOF
echo $USER
wget http://bld-artifactory:8081/artifactory/external_packages/curl-7.36.0.tar.gz
tar xvzf curl-7.36.0.tar.gz
