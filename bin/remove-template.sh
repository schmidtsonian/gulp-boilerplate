#!/bin/bash

source bin/constants.sh

echo "Name of template?"
read -r name

templateName=`echo "$name" | tr '[A-Z]' '[a-z]' | sed 's/[^a-z  A-Z]//g' | tr ' ' '-'`

pugPath=$PATH_PUGS/$templateName
pugFile=$pugPath/index.pug
jsonFile=$PATH_JSONS/page-$templateName.json

echo "${TEXT_BOLD}Are you sure you want to delete this:${TEXT_NORMAL}"
echo $pugFile
echo $pugPath
echo $jsonFile
echo "${TEXT_BOLD}[Y/n]?${TEXT_NORMAL}"
read -r confirm

if [[ $confirm == 'y' || $confirm == 'Y' ]]; then

  echo "${TEXT_BOLD}You are de boss...${TEXT_NORMAL}"

  rm -rf $pugPath
  echo "${TEXT_COLOR_RED}$pugFile${TEXT_NORMAL} done"
  echo "${TEXT_COLOR_RED}$pugPath${TEXT_NORMAL} done"

  rm $jsonFile
  echo "${TEXT_COLOR_RED}$jsonFile${TEXT_NORMAL} done"

else
  echo "${TEXT_BOLD}Don't play with me boy!${TEXT_NORMAL}"
fi
