#!/bin/bash
diffDate=`date +%Y-%m-%d`
diffFile=tax_rates_eu_${diffDate}.diff
targetFile=tax_rates_eu.csv

scriptPath=$(readlink -f $0)
scriptDir=`dirname $scriptPath`
targetPath=$scriptDir/../$targetFile

test -f $targetPath || (echo "Target $targetPath does not exist" && exit)

cd `dirname $scriptDir`
git diff $targetFile > diff/$diffFile
