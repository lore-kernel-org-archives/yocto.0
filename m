Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50AE2E007D1; Wed,  8 Aug 2018 03:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D730E003D7
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 03:13:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Aug 2018 03:13:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,457,1526367600"; d="scan'208";a="78526514"
Received: from aaronchu-mobl.gar.corp.intel.com ([172.30.199.44])
	by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2018 03:13:18 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	aaron.chun.yew.chan@intel.com
Date: Wed,  8 Aug 2018 18:12:47 +0800
Message-Id: <20180808101247.13592-1-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.16.2.windows.1
Subject: [PATCH] run-config: Reverse the oder of remove layers
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
X-List-Received-Date: Wed, 08 Aug 2018 10:13:25 -0000

This patch fixes the "Collection Error during parsing layer conf"
when a parent layer is accidentally added before depend layers.
When removing layers from bblayers, we should not be following
the same sequence of adding the layers, it should be done in a
reversed order. This is an assumption that the layers have their
dependent layers added before the parent layers are added.
In general, the parent layer require to be remove first before
its child dependencies layers.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/run-config | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index ce40249..9fede1e 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -152,8 +152,8 @@ for stepnum in range(1, maxsteps + 1):
         utils.printheader("Step %s/%s: Running 'plain' command %s" % (stepnum, maxsteps, cmd))
         bitbakecmd(builddir, cmd, report, stepnum, oeenv=False)
 
-    # Remove any layers we added
-    for layer in layers:
+    # Remove any layers we added in a reverse order
+    for layer in reversed(layers):
         bitbakecmd(builddir, "bitbake-layers remove-layer %s" % layer, report, stepnum)
 
 if publish:
-- 
2.16.2.windows.1


