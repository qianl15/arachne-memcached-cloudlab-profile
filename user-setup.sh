#!/bin/bash
# Script for setting up software development environment for a specific user.

# Get the absolute path of this script on the system.
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

# Checkout related repositories
# echo -e "\n===== CLONING REPOSITORIES ====="
git clone https://github.com/qianl15/config.git

# Add memcached to the search path
# do not use export PATH=xxx:$PATH
# Otherwise, you will not be able to login
cat >> $HOME/.bashrc <<EOM

export PATH=/usr/local/memcached-1.5.6/bin:\$PATH

EOM

# Configure the machine with my personal settings
echo -e "\n===== SETUP USER CONFIG SETTINGS ====="
cd $HOME/config
./cloudlab/setup.sh
