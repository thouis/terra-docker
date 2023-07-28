#!/bin/bash
cp -r ../terra-jupyter-base/custom .
cp -r ../terra-jupyter-base/scripts .
cp -r ../terra-jupyter-base/jupyter_notebook_config.py .

gcloud builds submit --timeout=40m --machine-type=N1_HIGHCPU_8 --tag us.gcr.io/landerlab-atacseq-200218/landerlab-torch-base:0.3

rm -r custom scripts jupyter_notebook_config.py

