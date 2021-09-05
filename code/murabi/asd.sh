#!/bin/bash

mvn clean install
docker build -t radiatorspring/murabi .
docker run -p 8080:8080  radiatorspring/murabi