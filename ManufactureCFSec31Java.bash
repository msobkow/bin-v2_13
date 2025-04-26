#!/bin/bash
buildString=$1
toolsetNames="$2 $3 $4 $5 $6 $7 $8 $9"
cd $MSSCFHOME/v2_13-maven/bin
./CFManufactureCode213Java.bash ${buildString} org-msscf-msscf-CFSec-3-1-CFSec org-msscf-msscf-213-layered ${toolsetNames}
cd $MSSCFHOME
