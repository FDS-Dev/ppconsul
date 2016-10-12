#!/bin/bash

set -e

wget http://bld-artifactory:8081/artifactory/formation-apt/pool/nightly/boost-1.55_1.55_amd64.deb
sudo -s << 'EOF'
dpkg -i boost-1.55_1.55_amd64.deb
EOF
# There is a libCurl dependency but devsetup installs this and all our Jenkins servers should
# already have curl installed, so shouldn't need to do anything extra here
