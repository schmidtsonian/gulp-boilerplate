#!/bin/bash

source bin/constants.sh

echo "Name of template?"
read -r name

templateName=`echo "$name" | tr '[A-Z]' '[a-z]' | sed 's/[^a-z  A-Z]//g' | tr ' ' '-'`

mkdir $PATH_PUGS/$templateName
echo "extends ../_layout/master/_master

block body

  #$templateName.h-invisible
    h1 about" > $PATH_PUGS/$templateName/index.pug

echo "${TEXT_COLOR_GREEN} $PATH_PUGS/$templateName/index.pug ${TEXT_NORMAL} done"

echo "{
  \"$templateName\": {
    \"title\": \"hello $templateName\"
  }
}" > $PATH_JSONS/page-$templateName.json

echo "${TEXT_COLOR_GREEN} $PATH_JSONS/page-$templateName.json ${TEXT_NORMAL} done"
