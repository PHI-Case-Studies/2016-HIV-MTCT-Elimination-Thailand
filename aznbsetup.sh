#!/bin/bash

# Initialize conda
source /opt/conda/etc/profile.d/conda.sh

# Activate base environment
conda activate base

# Install packages with mamba
mamba install -y -c conda-forge \
    git \
    ipywidgets \
    ipython \
    ipykernel \
    jupyterlab \
    nodejs \
    folium=0.14.0 \
    jinja2=3.1.2 \
    numpy \
    sqlite \
    matplotlib=3.7 \
    geopandas=0.13 \
    pandas=2.2 \
    seaborn \
    fiona \
    pyproj \
    fuzzywuzzy \
    plotly \
    pip \
    pysal

# Install googletrans fork explicitly
/opt/conda/bin/pip install googletrans

# Cleanup
conda clean --all --yes

