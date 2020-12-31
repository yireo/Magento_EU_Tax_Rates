#!/bin/bash
diffDate=`date +%Y-%m-%d`
diffFile=tax_rates_eu_${diffDate}.diff
targetFile=tax_rates_eu.csv
backupFile=${targetFile/.csv/_backup_${diffDate}.csv}

scriptPath=$(readlink -f $0)
scriptDir=`dirname $scriptPath`
diffPath=$scriptDir/../diff/$diffFile
targetPath=$scriptDir/../$targetFile

cd `dirname $scriptDir`
git pull -q origin master

test -f $diffPath || (echo "No diff $diffPath" && exit)
test -f $targetPath || (echo "Target $targetPath does not exist" && exit)

cp $diffPath .
git apply -vv --check $diffFile && echo "Good job!"
rm *.diff
