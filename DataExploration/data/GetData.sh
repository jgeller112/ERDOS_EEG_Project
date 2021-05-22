#!/bin/bash

## Script to download the data

## Downloading the full data here (commet it if it has already been downloaded)
#wget https://archive.ics.uci.edu/ml/machine-learning-databases/eeg-mld/eeg_full.tar

## Unziping
#mkdir FullData
cd FullData/
#mv ../eeg_full.tar .
#tar -xvf eeg_full.tar
#gzip -d co2*
#gzip -d co3*

## Untar all files
#for f in co*.tar
#do
#    tar -xvf $f
#done

## Cleaning up
#rm co*.tar

ls -d co* > dirName.dat
while read fileName; do
  cd "Unziping file "$fileName
  #echo `pwd`
  gzip -d *.gz
  cd ..
done <dirName.dat
