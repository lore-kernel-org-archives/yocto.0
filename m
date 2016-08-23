Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4147DE00FDE; Tue, 23 Aug 2016 07:59:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D4EE00E7E
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 07:59:43 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 23 Aug 2016 07:59:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,566,1464678000"; d="scan'208";a="869928697"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.54])
	by orsmga003.jf.intel.com with ESMTP; 23 Aug 2016 07:59:32 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 07:59:25 -0700
Message-Id: <1471964365-19832-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [PATCH] nightly-no-x11.conf: build and test some actual images
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
X-List-Received-Date: Tue, 23 Aug 2016 14:59:46 -0000

Create sample images and perform a sanity test on them.

[YOCTO #7568]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-no-x11.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-no-x11.conf b/buildset-config.controller/nightly-no-x11.conf
index 063ae89..7092a09 100644
--- a/buildset-config.controller/nightly-no-x11.conf
+++ b/buildset-config.controller/nightly-no-x11.conf
@@ -18,7 +18,8 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'GetBitbakeVersion': {}},
-        {'BuildImages': {'images': 'world'}},
+        {'BuildImages': {'images': 'core-image-full-cmdline core-image-weston world'}},
+        {'RunSanityTests': {'images': 'core-image-full-cmdline core-image-weston'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}},
         {'UploadToasterEventlog': {}}]
-- 
2.5.5


