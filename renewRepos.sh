#!/bin/bash

# Script to re-initialize git repos

for d in * ; do

    if [[ -d ${d} ]]; then
        echo "${d}"
        cd "${d}"
        #ls
        if [[ -d ".git" ]]; then
            echo "[ .git repo ]"
            rm -rf .git
            git init .
            git add . && git commit -a -m"initial commit"
            git branch -M main
        fi
        cd - 2>&1 > /dev/null
        echo
    fi

done
