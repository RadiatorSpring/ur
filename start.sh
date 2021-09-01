#!/bin/bash


source .envrc
pipenv install
cd ~/coding/mur/code/murabi
mvn clean install
cd ../..

python job/main.py murker deploy -ports 9000 9001 -murabi-port 8080
python job/main.py db deploy
python job/main.py murabi deploy -p 8080
