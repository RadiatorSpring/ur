#!/bin/bash
set -eux pipefail
source .envrc
pipenv install
cd ~/coding/ur/code/murabi
    mvn clean install
    docker build -t radiatorspring/murabi .
cd ../..

docker stop $(docker ps -a -q)
python job/main.py murker deploy -ports 9000 9001 -murabi-port 8080
python job/main.py db deploy
python job/main.py murabi deploy -p 8080

#psql -h localhost -d murabi -U $POSTGRES_USER 