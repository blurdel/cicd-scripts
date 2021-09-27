#!/bin/bash

me=$(basename $0)
echo "me=${me} $@"

# Remove any old testcase files
rm -f *.tc

# An input file is required
inputfile="${1:-tcid.txt}"
if [ ! -e ${inputfile} ]; then
  echo "${me}: ERROR, input file '${inputfile}' is required, this script will exit ..."
  exit 1
fi
echo "Reading: ${inputfile}"

#cnt=-1
while read -r line ; do

  # First line is the project-id, skip it  
  #((cnt++))
	#test $cnt -eq 0 && continue
    
  #echo "${line}"
  tcid=$(echo "${line}" | awk -F":" '{print $1}')
  name=$(echo "${line}" | awk -F":" '{print $2}')
  echo "${tcid}" > "${name}".tc

done <"${inputfile}"
