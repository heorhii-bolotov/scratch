#!/usr/bin/env bash

# arguments
folder=${1:-../tests/task1}
replace_from=${2:-nginx-01.com}
replace_to=${3:-nginx-02.com}

echo 'Passed folder, replace_from, replace_to args: '
echo "${folder}, ${replace_from}, ${replace_to}"

cd $folder
sed -i "s/${replace_from}/${replace_to}/g" *
