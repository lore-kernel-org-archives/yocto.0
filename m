Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6601E00519; Wed,  8 Mar 2017 08:43:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 847A3E0030B
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 08:43:43 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Mar 2017 08:43:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,264,1486454400"; d="scan'208";a="832402023"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Mar 2017 08:43:41 -0800
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Wed,  8 Mar 2017 10:44:32 -0600
Message-Id: <20170308164432.15132-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] scripts: Wrapper that helps to create a full test cycle
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Mar 2017 16:43:46 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add a wrapper that  helps to create the required test runs
for a full cycle on master branch.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 302 +++++++++++++++++++++++++++++++++++++
 1 file changed, 302 insertions(+)
 create mode 100755 scripts/full-test-cycle-wrapper.sh

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
new file mode 100755
index 0000000..f52cd96
--- /dev/null
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -0,0 +1,302 @@
+#!/bin/bash
+#
+# Full Test Cycle wrapper
+#
+# Copyright (c) 2017, Intel Corporation.
+#
+# This program is free software; you can redistribute it and/or modify it
+# under the terms and conditions of the GNU General Public License,
+# version 2, as published by the Free Software Foundation.
+#
+# This program is distributed in the hope it will be useful, but WITHOUT
+# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+# more details.
+#
+#
+# This script is wrapper to create a set of test runs on testo[pia
+# for a full QA execution cycle.
+
+
+#Set variables to be used globally
+export CONFIG_FILE='testopia_update.config'
+export ACTION='create'
+export ENVIRONMETS=""
+export EXECUTION_TYPE=""
+export OPTIONAL=""
+export TEST_PLAN=""
+export IMAGE="core-image-sato-sdk_"
+
+#Go to the main directory of qa-tools
+FILEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
+QADIR="`echo $FILEDIR | sed 's/scripts//g'`"
+cd $QADIR
+
+
+display_bars(){
+   if [ $1 == "START"  ]; then
+	echo "|########### CREATING TEST RUNS FOR  - $2 - ############|"
+   elif [ $1 == "END"  ]; then
+        echo "|----------- TEST RUNS COMPLETED FOR - $2 - -------------"
+   fi
+}
+
+
+#Function that creates the Test Runs for specific component
+create_test_run(){
+   #Check if optional parameters are given
+   if [ -z $2  ]; then
+      OPT=""
+   else
+      OPT="-o $2"
+   fi
+
+   #echo "############ CREATING TEST RUNS FOR - $1 - #############"
+   for ENV in "${ENVIRONMETS[@]}"
+   do
+     if [[ $2 == "BSP-MAN"  ]]; then
+         OPT="-o $IMAGE$ENV"
+     fi
+     for EXTP in $EXECUTION_TYPE
+     do
+        #call the script that creates Test Runs
+        ./testopia_update.py --config $CONFIG_FILE -a $ACTION -p "${1}" -c $EXTP -b $BRANCH \
+        -e "$ENV"  --project-version $VERSION --project-milestone "$VERSION $MILESTONE" \
+        --project-date $PJDATE --project-revision $RELEASE-$REVISION $OPT $TEST_PLAN --verbose
+     done
+   done
+   #echo "############ TEST RUNS COMPLETED FOR - $1 - #############"
+   #echo "........................................................."
+
+}
+
+create_yocto(){
+   #BSP MANUALS
+   ENVIRONMETS=("Genericx86_MMAX32" "Genericx86-64_NUC" "Beaglebone-Black" "EdgeRouter" "MPC8315e-rdb")
+   EXECUTION_TYPE="MANUAL"
+   create_test_run "${1}" "BSP-MAN"
+
+   #QEMUs Manuals
+   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
+   EXECUTION_TYPE="MANUAL"
+   create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
+
+   #QEMUs Autos
+   EVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64" "qemux86-lsb" "qemux86_64-lsb")
+   ECUTION_TYPE="AUTO"
+   create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
+
+   #QEMUs Autos LSB
+   ENVIRONMETS=("qemux86-lsb" "qemux86_64-lsb")
+   EXECUTION_TYPE="AUTO"
+   create_test_run "${1}" "core-image-lsb-sdk_ANYQEMU"
+
+   #BSP Autos
+   ENVIRONMETS=("genericx86 - on MMAX32bit" "genericx86-64 on MMAX64" "genericx86-64 on NUC" "genericx86-64-WIC on MMAX64" \
+                "genericx86-64-WIC on NUC" "genericx86-WIC on MMAX32"  "MPC8315e-rdb" "Beaglebone Black" "EdgeRouter")
+   EXECUTION_TYPE="AUTO"
+   create_test_run "${1}" "core-image-sato-sdk_ANYBSP"
+
+   #BSP Autos
+   ENVIRONMETS=("genericx86-64-lsb on NUC" "genericx86-64-lsb on MMAX64" "genericx86-lsb on MMAX32bit")
+   EXECUTION_TYPE="AUTO"
+   create_test_run "${1}" "core-image-lsb-sdk_ANYBSP"
+
+}
+
+create_meta-intel(){
+   #BSP MANUALS
+   ENVIRONMETS=("core2-32_MMAX32" "corei7-64_NUC")
+   EXECUTION_TYPE="MANUAL"
+   create_test_run "${1}" "BSP-MAN"
+
+   #BSP Autos
+   ENVIRONMETS=("core2-32_MMAX32" "corei7-64_NUC" "corei7-64_MMAX64" "corei7-64_Joule" \
+                "core2-32_WIC_MMAX32" "corei7-64_WIC_NUC" "corei7-64_WIC_MMAX64" "corei7-64_WIC_Joule" \
+		"intel-quark_Galileo" "intel-quark_WIC_Galileo")
+
+   EXECUTION_TYPE="AUTO"
+   create_test_run "${1}" "core-image-sato-sdk_ANYBSP"
+
+   #BSP Autos LSB
+   ENVIRONMETS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_Joule")
+
+   EXECUTION_TYPE="AUTO"
+   create_test_run "${1}" "core-image-lsb-sdk_ANYBSP"
+}
+
+
+#Function that set the environments and execution per component
+create_test_cycle(){
+
+    TEST_PLAN=""
+    case "$1" in
+                "ADT")
+		       ENVIRONMETS=("Fedora 25 i686" "Ubuntu 16.04 x86_64")
+		       EXECUTION_TYPE="MANUAL AUTO"
+                       create_test_run "${1}"
+		       ;;
+             "BitBake")
+		       ENVIRONMETS=("Fedora 24 x86_64")
+		       EXECUTION_TYPE="MANUAL"
+                       create_test_run "${1}"
+		       ;;
+           "BSP/QEMU")
+		       if [ $TYPE == "YOCTO"  ]; then
+			  create_yocto $1
+		       else
+			  create_meta-intel $1
+		       fi
+		       ;;
+              "CROPS")
+                       ENVIRONMETS=("Centos 7.1")
+		       EXECUTION_TYPE="AUTO"
+		       OPTIONAL="Toaster Poky"
+		       for OPT in $OPTIONAL
+		        do
+			   create_test_run "${1}" $OPT
+		        done
+		       ;;
+     "Eclipse Plugin")
+	               ENVIRONMETS=("Mars on Fedora 22 x86_64", "Neon on Fedora 22 x86_64")
+		       EXECUTION_TYPE="MANUAL"
+		       create_test_run "${1}"
+	               ;;
+               "eSDK")
+                       ENVIRONMETS=("Centos 7.1")
+		       EXECUTION_TYPE="AUTO"
+		       OPTIONAL="oeselftest sdkext"
+		       for OPT in $OPTIONAL
+		        do
+			   create_test_run "${1}" $OPT
+		        done
+	               ;;
+     "General Runtime")
+	               ENVIRONMETS=("VMWare Player on Ubuntu")
+		       EXECUTION_TYPE="AUTO"
+		       #This case test plan name is diferent from product name
+		       TEST_PLAN="--test-plan Runtime"
+		       create_test_run "${1}"
+		       ;;
+             "Kernel")
+	               ENVIRONMETS=("Centos 7")
+		       EXECUTION_TYPE="MANUAL"
+		       create_test_run "${1}"
+		       ;;
+         "Meta-yocto")
+	               ENVIRONMETS=("Ubuntu 14.04 x86_64")
+		       EXECUTION_TYPE="MANUAL"
+		       create_test_run "${1}"
+		       ;;
+            "OE-Core")
+	               ENVIRONMETS=("CentOS 7.1 x86_64" "Debian 8 x86_64" "Fedora 25 x86_64" "Fedora 24 x86_64" \
+			            "OpenSuse 13.2 x86_64" "OpenSuse421 x86_64" "ubuntu 16.04 x86_64" \
+				    "Ubuntu 16.10 x86-64")
+		       EXECUTION_TYPE="AUTO"
+		       create_test_run "${1}"
+		       ;;
+            "Runtime")
+	               ENVIRONMETS=("VMWare Player on Ubuntu")
+		       EXECUTION_TYPE="MANUAL"
+		       #This case test plan name is diferen from product name
+		       TEST_PLAN="--test-plan Build-Appliance"
+		       create_test_run "${1}"
+		       ;;
+            "Toaster")
+	               ENVIRONMETS=("Debian 4.3.0-0.bpo.1-amd64")
+		       EXECUTION_TYPE="MANUAL"
+		       OPTIONAL="UI-managed-mode"
+		       create_test_run "${1}" $OPTIONAL
+		       EXECUTION_TYPE="AUTO"
+		       OPTIONAL="UI"
+		       create_test_run "${1}" $OPTIONAL
+		       ;;
+  esac
+}
+
+
+usage(){
+  echo "Usage: ./full-test-cycle-wrapper.sh [-h] || [ [-b] [-p] [-m] [-r] [-l] [-d] ]"
+  echo "Arguments:"
+  echo " -h, --help               Show this help message and exit"
+  echo " -t TYPE OF CYCLE {YOCTO,META-INTEL}"
+  echo "                          Type of test cycle, could be YOCTO or META-INTEL"
+  echo " -b BRANCH {master,jethro,dizzy,daisy,noexists}, --branch {master,jethro,dizzy,daisy,noexists}
+	                  Branch for create or update."
+  echo " -p PROJECT VERSION  {2.2 2.3 2.4}
+                          Version of the project."
+  echo " -m PROJECT MILESTONE {M1 M2 M3 M4}
+                          Milestone of the project."
+  echo " -r RELEASE COMMIT {XXXXXX}
+                          SCM Revision of the project, commit of branch tested."
+  echo " -c RELEAE CANDIDATE {rc1 rc2 rcX}
+                          Release candidate to be used"
+  echo " -d PROJECT DATE {YYY-MM-DD}
+                          SCM version/revision date of the project."
+  exit
+}
+
+if [[ ( $# == "--help") ||  $# == "-h" || $# -eq 0 ]] ; then
+    usage
+    exit 0
+elif [  $# -ne 14 ]; then
+    echo "ERROR: missing arguments"
+    usage
+    exit 1
+fi
+
+while getopts ":t:b:p:m:r:c:d:" opt
+do
+  case $opt in
+       t) #Check for specific type of QA cycle
+          export TYPE=$OPTARG
+          if [ "$TYPE" != "YOCTO" -a  "$TYPE" != "META-INTEL" ]; then
+	       echo "ERROR: TYPE (-t) should be YOCTO or META-INTEL"
+	       exit 1
+	  fi
+	  ;;
+       b) #Creates Test Run for a exection on master
+          export BRANCH=$OPTARG
+          ;;
+       p) #Project version (ie 2.3)
+	  export VERSION=$OPTARG
+	  ;;
+       m) #Milestone under test
+	  export MILESTONE=$OPTARG
+	  ;;
+       r) #Project revision
+          export REVISION=$OPTARG
+	  ;;
+       c) #Project Release
+          export RELEASE=$OPTARG
+	  ;;
+       d) #Project Date YYYY-MM-DD
+	  export PJDATE=$OPTARG
+	  ;;
+      \?)
+	  echo "ERROR: INAVLID OPTION"
+          usage
+          ;;
+  esac
+done
+
+#Initialize the environment
+virtualenv venv
+source venv/bin/activate
+
+## Define components by t ype of test cycle
+if [[ $TYPE == "YOCTO" ]]; then
+    COMPONENTS=("ADT" "BitBake" "BSP/QEMU" "CROPS" "Eclipse Plugin" "eSDK" "General Runtime" "Kernel" "Meta-yocto" "OE-Core" "Runtime" "Toaster")
+else
+    COMPONENTS=("BSP/QEMU")
+fi
+
+#start creting all the test runs for the full release cycle
+#per available components
+
+for component in "${COMPONENTS[@]}"
+do
+  display_bars "START" "${component}"
+  create_test_cycle "${component}"
+  display_bars "END" "${component}"
+done
-- 
2.11.0


