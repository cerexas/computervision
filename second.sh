#!/bin/bash

# Ensure the 'git' directory exists and navigate into it
mkdir -p ~/git && cd ~/git

# Clone the examples-camera repository
git clone https://github.com/google-coral/examples-camera.git --depth 1

# Change into the 'examples-camera' directory
cd examples-camera

# Run the model download script
sh download_models.sh
