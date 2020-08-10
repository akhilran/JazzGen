#! /bin/bash
mkdir data
cd data
touch notes
cd ..
echo "Creating virtual environment..."
python -m venv jazz_music
echo "Virtual environement created"
source jazz_music/bin/activate
echo "Installing Requirements..."
pip install -r requirements.txt
echo "Requirements installed"
# Uncomment lines below to train the model
# echo "Train Model..."
# python TrainModel.py
# echo "Model trained"
echo "Generating Music..."
python GenerateMusic.py
echo "Music generated"