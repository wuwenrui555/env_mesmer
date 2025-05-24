#! /bin/bash
pixi project export conda-environment > env.yaml

env_name="mesmer_test"

mamba env create -n $env_name -f env.yaml
mamba run -n $env_name pip install git+https://github.com/wuwenrui555/env_mesmer@0.1.0