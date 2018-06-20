#!/bin/bash

TEXT_BOLD=$(tput bold)
TEXT_NORMAL=$(tput sgr0)
TEXT_COLOR_RED=$(tput setaf 1)
TEXT_COLOR_GREEN=$(tput setaf 2)
TEXT_COLOR_BLuE=$(tput setaf 3)

PATH_JSONS=src/assets/jsons
PATH_PUGS=src/pugs
PATH_SCSS_TEMPLATES=src/styles/_templates