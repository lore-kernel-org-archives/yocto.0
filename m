Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA4BAE006CD; Tue,  4 Apr 2017 12:48:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7DADE003C1
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 12:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491335281; x=1522871281;
	h=from:to:cc:subject:date:message-id;
	bh=5sy9s7M65R/g31U7A5aTfsaUtkjn+gbm5leelaW89Zg=;
	b=ntsdb+M1hVI7IbYJcLcxdd/ka+kU+h/rCAA2xlXB4cv/knUy5eW72dME
	i5PWTGwFN5vtIR8bHHlVliWEoJbUQg==;
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2017 12:48:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,275,1486454400"; d="scan'208";a="84316426"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by fmsmga005.fm.intel.com with ESMTP; 04 Apr 2017 12:48:00 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Apr 2017 14:49:37 -0500
Message-Id: <20170404194937.18800-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] full-test-cycle-wrapper: Correct typos
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
X-List-Received-Date: Tue, 04 Apr 2017 19:48:02 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Update name of ENVIRONMETS to ENVIRONMENTS and update the
ENVIRONMENTS value for runtime component

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 44 +++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
index 3a6ba0f..7d0ceb1 100755
--- a/scripts/full-test-cycle-wrapper.sh
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -21,7 +21,7 @@
 #Set variables to be used globally
 export CONFIG_FILE='testopia_update.config'
 export ACTION='create'
-export ENVIRONMETS=""
+export ENVIRONMENTS=""
 export EXECUTION_TYPE=""
 export OPTIONAL=""
 export TEST_PLAN=""
@@ -52,7 +52,7 @@ create_test_run(){
    fi
 
    #echo "############ CREATING TEST RUNS FOR - $1 - #############"
-   for ENV in "${ENVIRONMETS[@]}"
+   for ENV in "${ENVIRONMENTS[@]}"
    do
      if [[ $2 == "BSP-MAN"  ]]; then
          OPT="-o $IMAGE$ENV"
@@ -72,33 +72,33 @@ create_test_run(){
 
 create_yocto(){
    #BSP MANUALS
-   ENVIRONMETS=("Genericx86_MMAX32" "Genericx86-64_NUC" "Beaglebone-Black" "EdgeRouter" "MPC8315e-rdb")
+   ENVIRONMENTS=("Genericx86_MMAX32" "Genericx86-64_NUC" "Beaglebone-Black" "EdgeRouter" "MPC8315e-rdb")
    EXECUTION_TYPE="MANUAL"
    create_test_run "${1}" "BSP-MAN"
 
    #QEMUs Manuals
-   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
+   ENVIRONMENTS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
    EXECUTION_TYPE="MANUAL"
    create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
 
    #QEMUs Autos
-   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
+   ENVIRONMENTS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
 
    #QEMUs Autos LSB
-   ENVIRONMETS=("qemux86-lsb" "qemux86_64-lsb")
+   ENVIRONMENTS=("qemux86-lsb" "qemux86_64-lsb")
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-lsb-sdk_ANYQEMU"
 
    #BSP Autos
-   ENVIRONMETS=("genericx86 - on MMAX32bit" "genericx86-64 on MMAX64" "genericx86-64 on NUC" "genericx86-64-WIC on MMAX64" \
+   ENVIRONMENTS=("genericx86 - on MMAX32bit" "genericx86-64 on MMAX64" "genericx86-64 on NUC" "genericx86-64-WIC on MMAX64" \
                 "genericx86-64-WIC on NUC" "genericx86-WIC on MMAX32"  "MPC8315e-rdb" "Beaglebone Black" "EdgeRouter")
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-sato-sdk_ANYBSP"
 
    #BSP Autos
-   ENVIRONMETS=("genericx86-64-lsb on NUC" "genericx86-64-lsb on MMAX64" "genericx86-lsb on MMAX32bit")
+   ENVIRONMENTS=("genericx86-64-lsb on NUC" "genericx86-64-lsb on MMAX64" "genericx86-lsb on MMAX32bit")
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-lsb-sdk_ANYBSP"
 
@@ -106,12 +106,12 @@ create_yocto(){
 
 create_meta-intel(){
    #BSP MANUALS
-   ENVIRONMETS=("core2-32_MMAX32" "corei7-64_NUC")
+   ENVIRONMENTS=("core2-32_MMAX32" "corei7-64_NUC")
    EXECUTION_TYPE="MANUAL"
    create_test_run "${1}" "BSP-MAN"
 
    #BSP Autos
-   ENVIRONMETS=("core2-32_MMAX32" "corei7-64_NUC" "corei7-64_MMAX64" "corei7-64_Joule" \
+   ENVIRONMENTS=("core2-32_MMAX32" "corei7-64_NUC" "corei7-64_MMAX64" "corei7-64_Joule" \
                 "core2-32_WIC_MMAX32" "corei7-64_WIC_NUC" "corei7-64_WIC_MMAX64" "corei7-64_WIC_Joule" \
 		"intel-quark_Galileo" "intel-quark_WIC_Galileo")
 
@@ -119,7 +119,7 @@ create_meta-intel(){
    create_test_run "${1}" "core-image-sato-sdk_ANYBSP"
 
    #BSP Autos LSB
-   ENVIRONMETS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_Joule")
+   ENVIRONMENTS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_Joule")
 
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-lsb-sdk_ANYBSP"
@@ -132,12 +132,12 @@ create_test_cycle(){
     TEST_PLAN=""
     case "$1" in
                 "ADT")
-		       ENVIRONMETS=("Fedora 25 i686" "Ubuntu 16.04 x86_64")
+		       ENVIRONMENTS=("Fedora 25 i686" "Ubuntu 16.04 x86_64")
 		       EXECUTION_TYPE="MANUAL AUTO"
                        create_test_run "${1}"
 		       ;;
              "BitBake")
-		       ENVIRONMETS=("Fedora 24 x86_64")
+		       ENVIRONMENTS=("Fedora 24 x86_64")
 		       EXECUTION_TYPE="MANUAL"
                        create_test_run "${1}"
 		       ;;
@@ -149,7 +149,7 @@ create_test_cycle(){
 		       fi
 		       ;;
               "CROPS")
-                       ENVIRONMETS=("Centos 7.1")
+                       ENVIRONMENTS=("Centos 7.1")
 		       EXECUTION_TYPE="AUTO"
 		       OPTIONAL="Toaster Poky"
 		       for OPT in $OPTIONAL
@@ -158,12 +158,12 @@ create_test_cycle(){
 		        done
 		       ;;
      "Eclipse Plugin")
-	               ENVIRONMETS=("Mars on Fedora 22 x86_64", "Neon on Fedora 22 x86_64")
+	               ENVIRONMENTS=("Mars on Fedora 22 x86_64", "Neon on Fedora 22 x86_64")
 		       EXECUTION_TYPE="MANUAL"
 		       create_test_run "${1}"
 	               ;;
                "eSDK")
-                       ENVIRONMETS=("Centos 7.1")
+                       ENVIRONMENTS=("Centos 7.1")
 		       EXECUTION_TYPE="AUTO"
 		       OPTIONAL="oeselftest sdkext"
 		       for OPT in $OPTIONAL
@@ -172,38 +172,38 @@ create_test_cycle(){
 		        done
 	               ;;
      "General Runtime")
-	               ENVIRONMETS=("VMWare Player on Ubuntu")
+	               ENVIRONMENTS=("VMWare Player on Ubuntu")
 		       EXECUTION_TYPE="AUTO"
 		       #This case test plan name is diferent from product name
 		       TEST_PLAN="--test-plan Runtime"
 		       create_test_run "${1}"
 		       ;;
              "Kernel")
-	               ENVIRONMETS=("Centos 7")
+	               ENVIRONMENTS=("Centos 7")
 		       EXECUTION_TYPE="MANUAL"
 		       create_test_run "${1}"
 		       ;;
          "Meta-yocto")
-	               ENVIRONMETS=("Ubuntu 14.04 x86_64")
+	               ENVIRONMENTS=("Ubuntu 14.04 x86_64")
 		       EXECUTION_TYPE="MANUAL"
 		       create_test_run "${1}"
 		       ;;
             "OE-Core")
-	               ENVIRONMETS=("CentOS 7.1 x86_64" "Debian 8 x86_64" "Fedora 25 x86_64" "Fedora 24 x86_64" \
+	               ENVIRONMENTS=("CentOS 7.1 x86_64" "Debian 8 x86_64" "Fedora 25 x86_64" "Fedora 24 x86_64" \
 			            "OpenSuse 13.2 x86_64" "OpenSuse421 x86_64" "ubuntu 16.04 x86_64" \
 				    "Ubuntu 16.10 x86-64")
 		       EXECUTION_TYPE="AUTO"
 		       create_test_run "${1}"
 		       ;;
             "Runtime")
-	               ENVIRONMETS=("VMWare Player on Ubuntu")
+	               ENVIRONMENTS=("user-preference")
 		       EXECUTION_TYPE="MANUAL"
 		       #This case test plan name is diferen from product name
 		       TEST_PLAN="--test-plan Build-Appliance"
 		       create_test_run "${1}"
 		       ;;
             "Toaster")
-	               ENVIRONMETS=("Debian 4.3.0-0.bpo.1-amd64")
+	               ENVIRONMENTS=("Debian 4.3.0-0.bpo.1-amd64")
 		       EXECUTION_TYPE="MANUAL"
 		       OPTIONAL="UI-managed-mode"
 		       create_test_run "${1}" $OPTIONAL
-- 
2.11.0


