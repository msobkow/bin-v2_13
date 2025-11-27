#!/bin/bash
cd $MSSCFHOME/v2_13-maven/
for adir in bin cfkbase cfmodel org.msscf.msscf.v2_13 org.msscf.msscf.v2_13.cfbam org.msscf.msscf.v2_13.cfbam.CFBamMssCF org.msscf.msscf.v2_13.cfbam.CFBamRam org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader org.msscf.msscf.v2_13.cfbam.CFBamSaxRamLdr org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader org.msscf.msscf.v2_13.cfbamcust.MSSBamCF org.msscf.msscf.v2_13.cfkbase org.msscf.msscf.v2_13.CFCli org.msscf.msscf.v2_13.cfcore org.msscf.msscf.v2_13.cfint org.msscf.msscf.v2_13.cfint.CFIntRam org.msscf.msscf.v2_13.cfint.CFIntSaxLoader org.msscf.msscf.v2_13.cfint.CFIntSaxRamLdr org.msscf.msscf.v2_13.cflib.CFLib org.msscf.msscf.v2_13.cflib.CFLib.DbTest org.msscf.msscf.v2_13.cflib.CFLib.JavaFX org.msscf.msscf.v2_13.cfsec org.msscf.msscf.v2_13.cfsec.CFSecRam org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader org.msscf.msscf.v2_13.cfsec.CFSecSaxRamLdr
do
		pushd $adir
		chmod 755 `find . -name '*.bash'`
		git add `find . -name '.gitignore' -o -name '*.bash'`
		git update-index --add --chmod=+x `find . -name '*.bash'`
		popd
done
cd $MSSCFHOME
