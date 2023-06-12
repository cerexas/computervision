#!/bin/bash

# Add the Coral package repository to the APT sources
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list

# Add the Google Cloud public key to APT
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update package list
sudo apt-get update

# Install python3-pycoral
sudo apt-get install python3-pycoral

# Prompt the user for which Edge TPU library to install
read -p "Do you want to install the Standard Edge TPU runtime? [Y/n]: " runtime_choice

# Install the selected Edge TPU runtime
case "$runtime_choice" in
    [Yy]* | "" )
        sudo apt-get install libedgetpu1-std
        ;;
    [Nn]* )
        sudo apt-get install libedgetpu1-max
        ;;
    *)
        echo "Invalid choice. Please run the script again and enter either 'Y' for yes or 'N' for no."
        exit 1
        ;;
esac
