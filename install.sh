#!/bin/bash
apt-get update -y && apt-get install puppet -y
service puppet start
mkdir -p /etc/puppet/manifests /etc/puppet/modules/package/manifests /etc/puppet/modules/users/manifests
cp -R ./* /etc/puppet/
puppet apply --modulepath ./modules manifests/site.pp

