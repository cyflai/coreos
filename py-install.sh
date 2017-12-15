#!/bin/bash -uxe

mkdir -p /opt/bin

wget https://gitlab.hds-cloudconnect.com:8443/ActivePython-2.7.13.2715-linux-x86_64-glibc-2.12-402695.tar.gz --no-check-certificate
tar -xzvf ActivePython-2.7.13.2715-linux-x86_64-glibc-2.12-402695.tar.gz
mv ActivePython-2.7.13.2715-linux-x86_64-glibc-2.12-402695 apy
apy/install.sh -I /opt/python/

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/pip /opt/bin/pip
ln -sf /opt/python/bin/python /opt/bin/python
ln -sf /opt/python/bin/python /opt/bin/python2
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv
