#!/bin/bash
buildString=$1
toolsetNames="$2 $3 $4 $5 $6 $7 $8 $9"
cd $MSSCFHOME/v2_13-maven/bin
./CFManufactureCode213Java.bash ${buildString} org-msscf-msscf-CFBam-3-1-CFBam org-msscf-msscf-213-layered+msscf ${toolsetNames}
cd $MSSCFHOME
