#!/bin/bash

source bin/constants.sh

echo "Name of atom?"
read -r name

atomName=`echo "$name" | tr '[A-Z]' '[a-z]' | sed 's/[^a-z  A-Z]//g' | tr ' ' '-'`

directoryScss=$PATH_SCSS_ATOMS/$atomName
fileRootScss=$directoryScss/_$atomName.scss
fileBaseScss=$directoryScss/_$atomName-[base].scss


mkdir $directoryScss
echo "
/*=============================================
=                   $atomName                 =
=============================================*/

/*----------  Core  ----------*/
@import '$atomName-[base]';

/*----------  Enhacements  ----------*/

" > $fileRootScss

echo "${TEXT_COLOR_GREEN}$fileRootScss${TEXT_NORMAL} done"

echo "" > $fileBaseScss