#!/bin/bash

TEXT_BOLD=$(tput bold)
TEXT_NORMAL=$(tput sgr0)
TEXT_COLOR_RED=$(tput setaf 1)
TEXT_COLOR_BLUE=$(tput setaf 4)

PATH_JSONS=src/assets/jsons
PATH_PUGS=src/pugs
PATH_PUGS_ATOMS=src/pugs/_atoms

PATH_SCSS_TEMPLATES=src/styles/_templates
PATH_SCSS_ATOMS=src/styles/_atoms