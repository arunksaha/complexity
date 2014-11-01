#!/bin/bash

# CCCC 3.1.4
# Installed from http://sourceforge.net/projects/cccc/files/cccc/3.1.4/
CcccExe="/usr/local/bin/cccc"
Directory=$1

CcccLogFile=./cccc_log.log
readonly tmpfileCcccOutDir=$(mktemp -d)
mkdir -p ${tmpfileCcccOutDir}

find ${Directory} -type f -name '*.c' | xargs ${CcccExe} --outdir=${tmpfileCcccOutDir} --lang=c > ${CcccLogFile} 2>&1

readonly tmpfileCcccOut=$(mktemp)
cat ${tmpfileCcccOutDir}/cccc.db | grep '^CCCC_MemExt' | grep '@definition@' | cut -d '@' -f 3,6,7,10 > ${tmpfileCcccOut}

readonly tmpfileCcccFieldsExtract=$(mktemp)
./mccabe_extract.py ${tmpfileCcccOut} > ${tmpfileCcccFieldsExtract}

readonly tmpfileCcccResult=$(mktemp)
sort --numeric-sort --reverse --key=1 < ${tmpfileCcccFieldsExtract} > ${tmpfileCcccResult}
cat ${tmpfileCcccResult}

rm -rf ${tmpfileCcccOutDir} ${tmpfileCcccOut} ${tmpfileCcccFieldsExtract} ${tmpfileCcccResult} ${CcccLogFile}
