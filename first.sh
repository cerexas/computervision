#!/bin/bash

# Make a directory named 'coral' and change into it
mkdir coral && cd coral

# Clone the pycoral repository
git clone https://github.com/google-coral/pycoral.git

# Change into the pycoral directory
cd pycoral

# Run the install script for classify_image.py
bash examples/install_requirements.sh classify_image.py

# Run the classification example
python3 examples/classify_image.py \
--model test_data/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite \
--labels test_data/inat_bird_labels.txt \
--input test_data/parrot.jpg
