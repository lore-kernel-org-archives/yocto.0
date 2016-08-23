Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5082E00D4E; Tue, 23 Aug 2016 10:46:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B259E00D3D
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 10:46:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 23 Aug 2016 10:46:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,567,1464678000"; d="scan'208";a="1019163613"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.54])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2016 10:46:20 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 10:46:12 -0700
Message-Id: <1471974372-25494-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-musl.conf: run sanity tests on images
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
X-List-Received-Date: Tue, 23 Aug 2016 17:46:22 -0000

Run the sanity tests on the musl images.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-musl.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-config.controller/nightly-musl.conf
index cc2aea0..d8913b1 100644
--- a/buildset-config.controller/nightly-musl.conf
+++ b/buildset-config.controller/nightly-musl.conf
@@ -13,6 +13,7 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nTCLIBC="musl"\n' }},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato world'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-full-cmdline core-image-sato'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}]
 
-- 
2.5.5


