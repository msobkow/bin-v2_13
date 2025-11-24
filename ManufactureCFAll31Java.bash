#!/bin/bash
cd $MSSCFHOME/v2_13-maven/bin
./ManufactureCFCore31Java.bash $*
cd $MSSCFHOME/v2_13-maven/bin
./ManufactureCFSec31Java.bash $*
cd $MSSCFHOME/v2_13-maven/bin
./ManufactureCFInt31Java.bash $*
#cd $MSSCFHOME/v2_13-maven/bin
#./ManufactureCFDbTst31Java.bash $*
cd $MSSCFHOME/v2_13-maven/bin
./ManufactureCFBam31Java.bash $*
cd $MSSCFHOME
