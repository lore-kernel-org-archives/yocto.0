Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CC68E00E08; Tue, 23 Aug 2016 13:31:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7359E00DD6
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 13:31:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 23 Aug 2016 13:31:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,567,1464678000"; d="scan'208";a="1040367216"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.54])
	by orsmga002.jf.intel.com with ESMTP; 23 Aug 2016 13:31:28 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 13:31:23 -0700
Message-Id: <1471984283-28438-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-multilib.conf: add mips64/32 build and test
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
X-List-Received-Date: Tue, 23 Aug 2016 20:31:59 -0000

To provide additional testing of multilib configs, build and test a
mips64/n32 image.

[YOCTO #8083]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-multilib.conf | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-config.controller/nightly-multilib.conf
index 9dce758..2c842f5 100644
--- a/buildset-config.controller/nightly-multilib.conf
+++ b/buildset-config.controller/nightly-multilib.conf
@@ -37,5 +37,13 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'multilib': 'lib64',
                             'distro': 'poky'}},
         {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk'}},
+        {'CreateAutoConf': {'machine': 'qemumips64', 'SDKMACHINE' : 'x86_64',
+                            'buildhistory' : False,
+                            'distro': 'poky',
+                            'atextappend' : '\nrequire conf/multilib.conf\nMULTILIBS = "multilib:lib64 multilib:lib32"\nDEFAULTTUNE = "mips64-n32"\nDEFAULTTUNE_virtclass-multilib-lib64 = "mips64"\nDEFAULTTUNE_virtclass-multilib-lib32 = "mips32r2"\n'}},
+        {'BuildImages': {'images': 'core-image-minimal'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'BuildImages': {'images': '-c populate_sdk core-image-minimal'}},
+        {'RunSDKSanityTests': {'images': 'core-image-minimal'}},
         {'DownloadErrorReports': {}},
         {'SendErrorReport': {}}]
-- 
2.5.5


