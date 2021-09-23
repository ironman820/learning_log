#!/bin/bash

echo "Removing old environment if exists"
rm -rf ll_env

echo "Creating the environment"
python -m venv ll_env

echo "Activating the environment"
source ll_env/bin/activate

echo "Upgrading pip"
pip install --upgrade pip

echo "Installing requirements"
pip install -r requirements.txt

echo "Done"
echo "Be sure to activate the new environment: source ll_env/bin/activate"