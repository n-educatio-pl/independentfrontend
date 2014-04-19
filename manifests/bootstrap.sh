#!/usr/bin/env bash

if [ ! -f /home/vagrant/.runforthefirsttime ]; then
    echo "It seems that this box is running for the first time!"
    apt-get update # we have to update this list in order to connect to the repositories
    apt-get install -y ruby puppet librarian-puppet # we need them to provision machine
    cd /vagrant # directory in sync with the project root directory on the host
    librarian-puppet install # install external puppet modules
    touch modules/.gitkeep # brings back the file the has been removed by installation above not to alter git repository
    touch /home/vagrant/.runforthefirsttime # don't run it during the next launch
fi