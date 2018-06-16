#!/bin/bash

echo "Name of template?"
read -r name

templateName=`echo "$name" | tr '[A-Z]' '[a-z]' | sed 's/[^a-z  A-Z]//g' | tr ' ' '-'`

mkdir src/pugs/$templateName
echo "extends ../_layout/master/_master

block body

  #$templateName.h-invisible
    h1 about" > src/pugs/$templateName/index.pug

echo src/pugs/$templateName/index.pug done

echo "{
  \"$templateName\": {
    \"title\": \"hello $templateName\"
  }
}" > src/assets/jsons/page-$templateName.json

echo src/assets/jsons/page-$templateName.json done
