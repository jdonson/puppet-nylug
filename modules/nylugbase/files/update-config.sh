#!/bin/bash
pushd nylug-puppet
git pull
git submodule init
git submodule update
popd
puppet apply --pluginsync --modulepath ./nylug-puppet/modules ./nylug-puppet/site.pp --verbose
