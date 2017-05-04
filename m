Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBE54E00826; Thu,  4 May 2017 10:39:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 735D1E007B5
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 10:38:59 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2017 10:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,287,1491289200"; d="scan'208";a="964467998"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga003.jf.intel.com with ESMTP; 04 May 2017 10:38:58 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  4 May 2017 12:39:59 -0500
Message-Id: <20170504173959.29229-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] Full-test-cycle-wrapper: Add missing environments
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
X-List-Received-Date: Thu, 04 May 2017 17:39:01 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add missing environments for CROPS and BSP components

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
index 7d0ceb1..2b3a130 100755
--- a/scripts/full-test-cycle-wrapper.sh
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -113,13 +113,13 @@ create_meta-intel(){
    #BSP Autos
    ENVIRONMENTS=("core2-32_MMAX32" "corei7-64_NUC" "corei7-64_MMAX64" "corei7-64_Joule" \
                 "core2-32_WIC_MMAX32" "corei7-64_WIC_NUC" "corei7-64_WIC_MMAX64" "corei7-64_WIC_Joule" \
-		"intel-quark_Galileo" "intel-quark_WIC_Galileo")
+		"intel-quark_Galileo" "intel-quark_WIC_Galileo" "corei7-64_CherryHill" "corei7-64_WIC_CherryHill")
 
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-sato-sdk_ANYBSP"
 
    #BSP Autos LSB
-   ENVIRONMENTS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_Joule")
+   ENVIRONMENTS=("core2-32_lsb_MMAX32" "corei7-64_lsb_NUC" "corei7-64_lsb_MMAX64" "corei7-64_lsb_Joule" "corei7-64_lsb_CherryHill")
 
    EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-lsb-sdk_ANYBSP"
@@ -151,7 +151,7 @@ create_test_cycle(){
               "CROPS")
                        ENVIRONMENTS=("Centos 7.1")
 		       EXECUTION_TYPE="AUTO"
-		       OPTIONAL="Toaster Poky"
+		       OPTIONAL="eSDK Poky"
 		       for OPT in $OPTIONAL
 		        do
 			   create_test_run "${1}" $OPT
-- 
2.11.0


