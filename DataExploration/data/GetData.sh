#!/bin/bash

## Script to download the data

## Downloading the full data here (commet it if it has already been downloaded)
#wget https://archive.ics.uci.edu/ml/machine-learning-databases/eeg-mld/eeg_full.tar

## Unziping
mkdir FullData
cd FullData/
cp ../eeg_full.tar .
tar -xvf eeg_full.tar

gzip -d co*

## Untar all files
ls co*.tar > fileName.dat
while read file
do
    tar -xvf $file
    ## Cleaning up
    rm $file
done < fileName.dat

ls -d co* > dirName.dat
while read fileName; do
  cd $fileName
  echo "Unziping file "$fileName
  gzip -d *.gz
  cd ..
done <dirName.dat


ls -d co* | sort -R | sort -R > dirName.dat ## later I want both the "a" and "c" groups
count=1
while read fileName
do
  cd $fileName
  echo "Working on dir "$fileName

  ls *rd* > inputFiles.dat
  while read fileIn
  do
      if [ $count -eq 1 ]
      then
        cat $fileIn > ../fullData.dat
        count=2
      fi
      cat $fileIn >> ../fullData.dat
  done < inputFiles.dat

  cd ..
done <dirName.dat
