#!/bin/bash
curl -L "https://www.dropbox.com/s/wcbepy5ktxsl8br/sample_submission.csv.zip?dl=1" -o data/sample_submission.csv.zip


curl -L "https://www.dropbox.com/s/pkw0v9cvzzw9mju/test.csv.zip?dl=1" -o data/test.csv.zip

curl -L "https://www.dropbox.com/s/fwydsig623z6khv/train.csv.zip?dl=1" -o data/train.csv.zip

unzip "data/*.zip" -d data

chmod -R 755 data

echo "----------------------------------"
echo "-- download complete -------------"
echo "---check data folder to confirm --"
echo "----------------------------------"
