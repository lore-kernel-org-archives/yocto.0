Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F10E2E00C01; Mon, 14 Sep 2015 12:27:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFA17E00B19
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 12:27:07 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 14 Sep 2015 12:27:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,530,1437462000"; d="scan'208";a="644691327"
Received: from tmglnx.jf.intel.com ([10.7.200.136])
	by orsmga003.jf.intel.com with ESMTP; 14 Sep 2015 12:27:07 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Sep 2015 12:23:42 -0700
Message-Id: <1442258622-2934-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH] README: fix name of tap generating script
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
X-List-Received-Date: Mon, 14 Sep 2015 19:27:10 -0000

[YOCTO #8164]

README said "run poky/scripts/runqemu-setup-tapdev. Updated to
reflect correct script sname of poky/scripts/runqemu-gen-tapdevs.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 06b9cbc..7edb66c 100644
--- a/README
+++ b/README
@@ -13,7 +13,7 @@ you will need to:
 
 1. Install tight-vnc client and server.
 
-2. Set up tap devs by running poky/scripts/runqemu-setup-tapdev
+2. Set up tap devs by running poky/scripts/runqemu-gen-tapdevs
 
 3. Add "xterm*vt100*geometry: 80x50+10+10" to .Xdefaults
 
-- 
1.9.3


