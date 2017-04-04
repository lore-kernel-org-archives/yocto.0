Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E75E5E00655; Tue,  4 Apr 2017 12:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D3B6E003C1
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 12:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491335173; x=1522871173;
	h=from:to:cc:subject:date:message-id;
	bh=/KOG2C8+jHSzieJHTVIlYGSgPOI+OnCPG9fu2Z9m8ac=;
	b=qP6GE8epUUaTaXL3mDbQF1MIemygp8SPzL+NaplyMXK+cIsAjIujYWzx
	BjeGEwwMG6EfV4WnRQ5+UcG1sgsmYg==;
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Apr 2017 12:46:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,275,1486454400"; d="scan'208";a="69224392"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2017 12:46:12 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Apr 2017 14:47:50 -0500
Message-Id: <20170404194750.18734-1-jose.perez.carranza@linux.intel.com>
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
X-List-Received-Date: Tue, 04 Apr 2017 19:46:16 -0000

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


