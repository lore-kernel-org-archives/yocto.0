Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FDC5E0095F; Tue,  9 Aug 2016 10:34:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BAAE009CD
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 10:34:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Aug 2016 10:34:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,495,1464678000"; d="scan'208";a="1011326860"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2016 10:34:09 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2016 10:34:07 -0700
Message-Id: <1470764047-8097-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-musl.conf: add world build
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
X-List-Received-Date: Tue, 09 Aug 2016 17:34:34 -0000

Add world build for musl.

[YOCTO #10105]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-musl.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-config.controller/nightly-musl.conf
index 1f6aba5..cc2aea0 100644
--- a/buildset-config.controller/nightly-musl.conf
+++ b/buildset-config.controller/nightly-musl.conf
@@ -12,7 +12,7 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'distro': 'poky',
                             'atextappend' : '\nTCLIBC="musl"\n' }},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato'}},
+        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato world'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}]
 
-- 
2.5.5


