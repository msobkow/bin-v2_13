#!/bin/bash
cd $MSSCFHOME
for aprojdir in \
	v2_13-maven/org.msscf.msscf.v2_13.CFCli \
	v2_13-maven/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfbamcust.MSSBamCF \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamMssCF \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamRam \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam \
	v2_13-maven/org.msscf.msscf.v2_13.cfint.CFIntRam \
	v2_13-maven/org.msscf.msscf.v2_13.cfint.CFIntSaxLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfint \
	v2_13-maven/org.msscf.msscf.v2_13.cfsec.CFSecRam \
	v2_13-maven/org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfsec \
	v2_13-maven/org.msscf.msscf.v2_13.cfcore \
	v2_13-maven/org.msscf.msscf.v2_13.cflib.CFLib.JavaFX \
	v2_13-maven/org.msscf.msscf.v2_13.cflib.CFLib \
	v2_13-maven/org.msscf.msscf.v2_13
do
	if [ -a ${aprojdir}/pom.xml ]; then
		pushd ${aprojdir}
			mvn clean
		popd
	fi
done
cd $MSSCFHOME
