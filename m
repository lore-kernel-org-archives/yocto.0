Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6084E00BDF; Tue,  4 Jul 2017 15:03:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484FAE00B83
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 15:03:18 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jul 2017 15:03:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,309,1496127600"; d="scan'208";a="120836622"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga005.jf.intel.com with ESMTP; 04 Jul 2017 15:03:15 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Jul 2017 17:06:00 -0500
Message-Id: <20170704220602.23233-2-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
References: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
Subject: [qa-tools][PATCH 2/4] scripts/full-test-cycle-wrapper: Add support for new 2.4 components
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
X-List-Received-Date: Tue, 04 Jul 2017 22:03:23 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add support for new packages supported for 2.4 release and update
components list according to release version.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
index 7dcd62e..6b62d7f 100755
--- a/scripts/full-test-cycle-wrapper.sh
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -89,7 +89,7 @@ create_yocto(){
    create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
 
    #QEMUs Autos
-   ENVIRONMENTS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
+   ENVIRONMENTS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64", "qemux86-64-WIC", "qemux86-WIC")
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
 
@@ -218,6 +218,14 @@ create_test_cycle(){
 		       OPTIONAL="UI"
 		       create_test_run "${1}" $OPTIONAL
 		       ;;
+"Package Management Issues")
+	               ENVIRONMENTS=("Any Supported Distro")
+	               EXECUTION_TYPE="MANUAL"
+	               #This case test plan name is diferent from product name
+	               TEST_PLAN="--test-plan Package-Management-Updates"
+	               create_test_run "${1}"
+															                          ;;
+
   esac
 }
 
@@ -296,7 +304,21 @@ source venv/bin/activate
 
 ## Define components by t ype of test cycle
 if [[ $TYPE == "YOCTO" ]]; then
-    COMPONENTS=("ADT" "BitBake" "BSP/QEMU" "CROPS" "Eclipse Plugin" "eSDK" "General Runtime" "Kernel" "Meta-yocto" "OE-Core" "Runtime" "Toaster")
+    case $VERSION in
+	    "2.1")   COMPONENTS=("ADT" "BitBake" "BSP/QEMU" "Eclipse Plugin" "General Runtime" "Meta-yocto" "OE-Core" "Runtime" "Toaster")
+	             ;;
+	    "2.2")   COMPONENTS=("ADT" "BitBake" "BSP/QEMU" "Eclipse Plugin" "eSDK" "General Runtime" "Meta-yocto" "OE-Core" "Runtime" "Toaster")
+	             ;;
+	    "2.3")   COMPONENTS=("ADT" "BitBake" "BSP/QEMU" "CROPS" "Eclipse Plugin" "eSDK" "General Runtime" "Kernel" "Meta-yocto" "OE-Core" "Runtime" "Toaster")
+	             ;;
+	    "2.4")   COMPONENTS=("ADT" "BitBake" "BSP/QEMU" "CROPS" "Eclipse Plugin" "eSDK" "General Runtime" "Kernel" "Meta-yocto" "OE-Core" "Runtime" "Toaster" "Package Management Issues")
+	             ;;
+	       \?)
+		     echo "ERROR: INAVLID RELEASE VERSION"
+		     exit 1
+		     ;;
+    esac
+
 else
     COMPONENTS=("BSP/QEMU")
 fi
-- 
2.11.0


