#!/bin/bash
cd $MSSCFHOME
let MavenStatus=0
for aprojdir in msscforg/java/org.msscf \
	v2_13-maven/org.msscf.msscf \
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
	v2_13-maven/org.msscf.msscf.v2_13.cfmodel \
	v2_13-maven/org.msscf.msscf.v2_13.cfkbase \
	v2_13-maven/org.msscf.msscf.v2_13.CFCli
do
	if [ $MavenStatus == 0 ]; then
		if [ -a ${aprojdir}/pom.xml ]; then
			pushd ${aprojdir}
				mvn -U deploy 
				let MavenStatus=$?
				if [ $MavenStatus != 0 ]; then
					echo "ERROR: mvn deploy for ${aprojdir} returned status ${MavenStatus} - build aborted"
				fi
			popd
		fi
	fi
done
if [ $MavenStatus == 0 ]; then
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.CFCli/target/org.msscf.msscf.v2_13.CFCli-2.13.11197-spring-boot.jar $MSSCF_HOME/v2_13-maven/bin-v2_13
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.CFCli/target/org.msscf.msscf.v2_13.CFCli-2.13.11197-spring-boot.jar $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13-installer/bin-v2_13
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.cfcore/resources/xsd/*.xsd $MCF_HOME/msobkow.github.io/msscf/2.0.13/xsd/
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.cfcore/resources/xsd/*.xsd $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13-installer/website-v2_13/msscf/2.0.13/xsd/
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader/src/main/resources/xsd/*.xsd $MCF_HOME/msobkow.github.io/msscf/2.0.13/xsd/
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader/src/main/resources/xsd/*.xsd $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13-installer/website-v2_13/msscf/2.0.13/xsd/
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/src/main/resources/xsd/mssbam-2.13.xsd $MCF_HOME/msobkow.github.io/msscf/2.0.13/xsd/
	cp -v $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader/src/main/resources/xsd/mssbam-2.13.xsd $MSSCF_HOME/v2_13-maven/org.msscf.msscf.v2_13-installer/website-v2_13/msscf/2.0.13/xsd/
	echo "SUCCESS: All 2.13 Java builds completed successfully"
fi
cd $MSSCFHOME
