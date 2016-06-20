Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9260E00825; Mon, 20 Jun 2016 08:00:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C61C7E005A9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 08:00:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 20 Jun 2016 08:00:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,499,1459839600"; d="scan'208";a="979697175"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.96.142])
	by orsmga001.jf.intel.com with ESMTP; 20 Jun 2016 08:00:17 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 08:00:11 -0700
Message-Id: <1466434811-32660-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-world-lsb.conf: skip Publish step so artifacts don't overwrite nightly-world ones
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
X-List-Received-Date: Mon, 20 Jun 2016 15:00:51 -0000

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-world-lsb.conf | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
index 4c9994c..f755920 100644
--- a/buildset-config.controller/nightly-world-lsb.conf
+++ b/buildset-config.controller/nightly-world-lsb.conf
@@ -21,6 +21,7 @@ steps: [{'SetDest':{}},
                             'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'world'}},
-        {'SendErrorReport': {}},
-        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
+        {'SendErrorReport': {}}]
+# skip Publish step so artifacts don't overwrite nightly-world ones
+#        {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
 
-- 
2.5.5


