#!/usr/bin/env bash

set -e

# install Brew & command line tools
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install xcode and accept licence
xcode-select --install
xcode-build -license accept

#intall ansible
easy_install pip
pip install ansible
