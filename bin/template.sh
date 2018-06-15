#!/bin/bash

echo "Name of template (kebab-case)?"
read -r NAME

mkdir src/pugs/$NAME
echo "extends ../_layout/master/_master

block body

  #$NAME.h-invisible
    h1 about" > src/pugs/$NAME/index.pug


echo "{
  \"$NAME\": {
    \"title\": \"hello $NAME\"
  }
}" > src/assets/jsons/page-$NAME.json