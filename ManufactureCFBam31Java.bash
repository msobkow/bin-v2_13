#!/bin/bash
buildString=$1
toolsetNames="$2 $3 $4 $5 $6 $7 $8 $9"
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./CFManufactureCode213Java.bash ${buildString} io-github-msobkow-CFBam-3-1-CFBam io-github-msobkow-30-layered+mcf ${toolsetNames}
cd $MSSCFHOME
