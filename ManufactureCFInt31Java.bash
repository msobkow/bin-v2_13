#!/bin/bash
buildString=$1
toolsetNames="$2 $3 $4 $5 $6 $7 $8 $9"
cd $MSSCFHOME/v2_13-maven/bin
./CFManufactureCode213Java.bash ${buildString} server-markhome-msscf-CFInt-3-1-CFInt org-msscf-msscf-213-layered+msscf ${toolsetNames}
cd $MSSCFHOME
