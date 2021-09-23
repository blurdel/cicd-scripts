#!/bin/bash

# Script to re-initialize git repos

for d in * ; do

  if [[ -d ${d} ]]; then
    cd "${d}"

    # Check if this is a git repo, if it is, re-init it
    if [[ -d ".git" ]]; then
      echo "${d} -> [ .git repo ]"
      rm -rf .git
      git init .
      git add . && git commit -am "initial commit"
      git branch -M main
    else
      # Juest echo the directory name
      echo "${d}"
    fi
    cd - 2>&1 > /dev/null
    echo
  fi

done
