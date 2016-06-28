Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5F54E00DF8; Tue, 28 Jun 2016 13:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A683E00C0F
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 13:31:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 28 Jun 2016 13:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,542,1459839600"; d="scan'208";a="1006973806"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.59])
	by orsmga002.jf.intel.com with ESMTP; 28 Jun 2016 13:31:51 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Jun 2016 13:31:35 -0700
Message-Id: <1467145895-18166-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] add mkefdisk image for easier debugging
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
X-List-Received-Date: Tue, 28 Jun 2016 20:31:51 -0000

Originally-by: Ed Bartosh <eduard.bartosh@intel.com>
Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-wic.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletions(-)

diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-config.controller/nightly-wic.conf
index 680ac16..12f1c2e 100644
--- a/buildset-config.controller/nightly-wic.conf
+++ b/buildset-config.controller/nightly-wic.conf
@@ -18,7 +18,8 @@ steps: [{'SetDest':{}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
-        {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}}]
+        {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'mkefdisk', 'target_img':'core-image-sato'}}]
 
 
 
-- 
2.5.5


