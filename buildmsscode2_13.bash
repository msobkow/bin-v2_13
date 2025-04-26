#!/bin/bash
export MVNGOAL=$*
pushd $MSSCF_HOME/v2_13-maven
	pushd org.msscf.msscf.v2_13
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cflib.CFLib
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cflib.CFLib.JavaFX
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfcore
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfsec
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfsec.CFSecRam
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfint
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfint.CFIntSaxLoader
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfint.CFIntRam
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfbam
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfbam.CFBamRam
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfbam.CFBamMssCF
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfbamcust.MSSBamCF
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader
		mvn $MVNGOAL
	popd
	pushd org.msscf.msscf.v2_13.CFCli
		mvn $MVNGOAL
	popd
	pushd bin
		if [ "`echo \"$MVNGOAL\"|egrep '(install)'`" != "" ]; then
			echo "Extracting build from $HOME/.m2/repository tree and installing to `pwd` ..."
		fi
	popd
popd
