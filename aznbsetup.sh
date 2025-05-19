#!/bin/bash

conda config --set channel_priority strict
conda install -y -n base -c conda-forge mamba

mamba install -y -c conda-forge \
    folium=0.9.1 \
    jinja2=3.1.2 \
    numpy \
    matplotlib=3.7 \
    geopandas=0.13 \
    pandas=1.5 \
    seaborn \
    fuzzywuzzy \
    plotly_express

pip install --upgrade pip

git clone https://github.com/BoseCorp/py-googletrans.git /tmp/py-googletrans
cd /tmp/py-googletrans
python setup.py install

conda clean --all --yes