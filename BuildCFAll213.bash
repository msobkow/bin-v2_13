#!/bin/bash
cd $MSSCFHOME
let MavenStatus=0
for aprojdir in msscforg/java/org.msscf \
	v2_13-maven/org.msscf.msscf.v2_13 \
	v2_13-maven/org.msscf.msscf.v2_13.cflib.CFLib \
	v2_13-maven/org.msscf.msscf.v2_13.cflib.CFLib.JavaFX \
	v2_13-maven/org.msscf.msscf.v2_13.cfcore \
	v2_13-maven/org.msscf.msscf.v2_13.cfsec \
	v2_13-maven/org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfsec.CFSecRam \
	v2_13-maven/org.msscf.msscf.v2_13.cfint \
	v2_13-maven/org.msscf.msscf.v2_13.cfint.CFIntSaxLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfint.CFIntRam \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamRam \
	v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamMssCF \
	v2_13-maven/org.msscf.msscf.v2_13.cfbamcust.MSSBamCF \
	v2_13-maven/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader \
	v2_13-maven/org.msscf.msscf.v2_13.CFCli
do
	if [ $MavenStatus == 0 ]; then
		if [ -a ${aprojdir}/pom.xml ]; then
			pushd ${aprojdir}
				mvn install
				let MavenStatus=$?
				if [ $MavenStatus != 0 ]; then
					echo "ERROR: mvn install for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
if [ $MavenStatus == 0 ]; then
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfbam.CFBamMssCF/2.13.11197/org.msscf.msscf.v2_13.cfbam.CFBamMssCF-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfsec/2.13.11197/org.msscf.msscf.v2_13.cfsec-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/2.13.11197/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfbam/2.13.11197/org.msscf.msscf.v2_13.cfbam-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfbam.CFBamRam/2.13.11197/org.msscf.msscf.v2_13.cfbam.CFBamRam-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfbamcust.MSSBamCF/2.13.11197/org.msscf.msscf.v2_13.cfbamcust.MSSBamCF-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader/2.13.11197/org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader/2.13.11197/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfint.CFIntRam/2.13.11197/org.msscf.msscf.v2_13.cfint.CFIntRam-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cflib.CFLib.JavaFX/2.13.11197/org.msscf.msscf.v2_13.cflib.CFLib.JavaFX-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cflib.CFLib/2.13.11197/org.msscf.msscf.v2_13.cflib.CFLib-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.CFCli/2.13.11197/org.msscf.msscf.v2_13.CFCli-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfint.CFIntSaxLoader/2.13.11197/org.msscf.msscf.v2_13.cfint.CFIntSaxLoader-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfint/2.13.11197/org.msscf.msscf.v2_13.cfint-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfsec.CFSecRam/2.13.11197/org.msscf.msscf.v2_13.cfsec.CFSecRam-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/msscf/msscf/v2_13/org.msscf.msscf.v2_13.cfcore/2.13.11197/org.msscf.msscf.v2_13.cfcore-2.13.11197.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/commons-codec/commons-codec/1.18.0/commons-codec-1.18.0.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/commons-io/commons-io/2.16.1/commons-io-2.16.1.jar $MSSCFHOME/v2_13-maven/bin
	cp -v $HOME/.m2/repository/org/apache/logging/log4j/log4j-api/2.24.3/log4j-api-2.24.3.jar $MSSCFHOME/v2_13-maven/bin
#	cp -v $HOME/.m2/repository/xerces/xercesImpl/2.12.2/xercesImpl-2.12.2.jar $MSSCFHOME/v2_13-maven/bin
	echo "SUCCESS: All 2.13 Java builds completed successfully"
fi
cd $MSSCFHOME
