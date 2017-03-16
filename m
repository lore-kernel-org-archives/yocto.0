Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5028DE00826; Thu, 16 Mar 2017 08:33:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3BABE00777
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 08:33:20 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 16 Mar 2017 08:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,173,1486454400"; d="scan'208";a="76192563"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga005.jf.intel.com with ESMTP; 16 Mar 2017 08:33:19 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu, 16 Mar 2017 10:34:25 -0500
Message-Id: <20170316153425.19041-1-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [qa-tools][PATCH] full-test-cycle-wrapper: Correct qemu-auto variables
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
X-List-Received-Date: Thu, 16 Mar 2017 15:33:24 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Update variables for creating test runs for qemu ato component

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 scripts/full-test-cycle-wrapper.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/full-test-cycle-wrapper.sh b/scripts/full-test-cycle-wrapper.sh
index f52cd96..3a6ba0f 100755
--- a/scripts/full-test-cycle-wrapper.sh
+++ b/scripts/full-test-cycle-wrapper.sh
@@ -82,8 +82,8 @@ create_yocto(){
    create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
 
    #QEMUs Autos
-   EVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64" "qemux86-lsb" "qemux86_64-lsb")
-   ECUTION_TYPE="AUTO"
+   ENVIRONMETS=("qemu-x86" "qemuarm" "qemuarm64" "qemumips" "qemumips64" "qemuppc" "qemux86-64")
+   EXECUTION_TYPE="AUTO"
    create_test_run "${1}" "core-image-sato-sdk_ANYQEMU"
 
    #QEMUs Autos LSB
-- 
2.11.0


