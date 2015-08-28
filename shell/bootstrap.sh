#!/usr/bin/env bash

# ESSENTIAL LIBRARIES AND UPDATES
# -------------------------------
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install \
    build-essential \
    checkinstall \
    openssl \
    libssl-dev \
    curl \
    git

# C/C++
# -----
sudo apt-get -y install \
    gcc
    g++ \
    cmake

# PYTHON
# ------

# Works on Ubuntu only
sudo apt-get install python python3

# Install Pip (use `pip` and `pip3` respectively)
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py

# PYTHON LIBS (Python 2)
# -----------

# for Python C-bindings
sudo apt-get install python-dev

sudo apt-get install \
    python-django \
    python-numpy \
    python-scipy

# NODE
# ----

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

sudo npm install --global npm@latest # update npm to latest version

# Common packages
sudo npm install --global mocha

# RUBY
# ----

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails

# YEOMAN and GRUNT
# ------

sudo npm install --global yo bower grunt-cli

# DOCKER
# ------

curl -sSL https://get.docker.com/ | sh

# Means `sudo` doesn't have to be used every time docker is used
sudo usermod -aG docker vagrant
