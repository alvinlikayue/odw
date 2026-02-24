#!/usr/bin/env bash

# This is a preprocess script for lychee (see https://github.com/gw-odw/odw/issues/72)
# We convert jupyter notebooks to markdown to ease extraction of links
# Other files are left unchanged

case "$1" in
    *.ipynb)
        exec jupyter nbconvert --to markdown --stdout "$1"
        ;;
    *)
        # identity function, output input without changes
        exec cat
        ;;
esac
