#!/bin/bash

rm -rf public
gulp && gulp watch
open -a "Google Chrome" http://localhost:8080