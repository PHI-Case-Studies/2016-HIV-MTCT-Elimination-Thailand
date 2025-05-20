#!/bin/bash

# Initialize conda
source /opt/conda/etc/profile.d/conda.sh

# Activate base environment
conda activate base

# Install packages with mamba
mamba install -y -c conda-forge \
    folium=0.14.0 \
    jinja2=3.1.2 \
    numpy \
    matplotlib=3.7 \
    geopandas=0.13 \
    pandas=2.2 \
    seaborn \
    fuzzywuzzy \
    plotly

# Upgrade pip and install py-googletrans directly from GitHub
pip install --upgrade pip
pip install git+https://github.com/BoseCorp/py-googletrans.git

# Cleanup
conda clean --all --yes