#!/bin/bash

# Activate environment
source /home/nbuser/anaconda3_420/bin/activate

# Install packages
conda update -c conda-forge conda conda-build
conda install -y -c conda-forge folium=0.9.1 jinja2=2.10* pandas=0.24.2 json numpy matplotlib=3.0.3 geopandas=0.5.0
conda install -y -c conda-forge pysal=2.0.0 seaborn=0.9.0 
conda install -y -c plotly plotly_express

pip install --upgrade pip

source /home/nbuser/anaconda3_420/bin/deactivate