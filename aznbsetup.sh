#!/bin/bash

# Activate environment
source /home/nbuser/anaconda3_420/bin/activate

# Install packages
conda update -c conda-forge conda
conda install -y -c conda-forge folium=0.9.1 jinja2=2.10* 
conda install -y numpy matplotlib=3.0* geopandas=0.5.0 pandas=0.24*
conda install -y -c conda-forge seaborn fuzzywuzzy
conda install -y -c plotly plotly_express

pip install --upgrade pip

git clone https://github.com/BoseCorp/py-googletrans.git
cd /home/nbuser/py-googletrans
python setup.py install

conda clean --all -f --yes
conda remove --quiet --yes --force qt pyqt

source /home/nbuser/anaconda3_420/bin/deactivate