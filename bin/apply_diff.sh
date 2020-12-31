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

test -f $diffPath || exit
test -f $targetPath || (echo "Target $targetPath does not exist" && exit)
test -f $backupFile && exit

cp $diffPath .

cp $targetFile $backupFile
git add $backupFile 2> /dev/null
git commit -q --no-status -m "Create new backup" $backupFile

git apply $diffFile 2> /dev/null
git commit -qm "Applied diff from file ${diffFile}" $targetFile

rm *.diff
git push -q origin master
