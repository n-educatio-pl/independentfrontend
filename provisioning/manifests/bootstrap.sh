#!/usr/bin/env bash

if [ ! -f /home/vagrant/.runforthefirsttime ]; then
    echo "It seems that this box is running for the first time!"
    apt-get update # we have to update this list in order to connect to the repositories
    apt-get install -y ruby puppet # we need them to provision machine
    cd /vagrant # directory in sync with the project root directory on the host

    # Puppet modules
    if ! `puppet module list | grep -q puppetlabs-postgresql`  ; then
        puppet module install puppetlabs-postgresql -v 3.3.3
    fi
    if ! `puppet module list | grep -q puppetlabs-nodejs`  ; then
        puppet module install puppetlabs-nodejs -v 0.4.0
    fi
    if ! `puppet module list | grep -q puppetlabs-apt`  ; then
        puppet module install puppetlabs-apt
    fi

    touch /home/vagrant/.runforthefirsttime # don't run it during the next launch
fi
