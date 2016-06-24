Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3839BE00D1E; Fri, 24 Jun 2016 08:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF04FE00874
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 08:05:59 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jun 2016 08:05:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,521,1459839600"; d="scan'208";a="724507854"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.24.83])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Jun 2016 08:05:56 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Jun 2016 08:05:52 -0700
Message-Id: <1466780752-5264-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [autobuilder][PATCH] nightly-arm.conf: build Cortex-A8 toolchains
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
X-List-Received-Date: Fri, 24 Jun 2016 15:06:04 -0000

Since met-fsl-arm was dropped from the nightly builds, the Cortex-A8 cross-
compiler used for beaglebone builds is not created. Include toochain
builds as part of nightly-arm now, so compiler is available for users
of the beaglebone machine.

[YOCTO #9810]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-arm.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/buildset-config.controller/nightly-arm.conf b/buildset-config.controller/nightly-arm.conf
index 76244ed..32920cf 100644
--- a/buildset-config.controller/nightly-arm.conf
+++ b/buildset-config.controller/nightly-arm.conf
@@ -15,7 +15,11 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'i686', 'distro': 'poky'}},
+        {'BuildToolchainImages': {}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest'}},
+        {'CreateAutoConf': {'machine': 'beagleboard', 'SDKMACHINE' : 'x86_64', 'distro': 'poky'}},
+        {'BuildToolchainImages': {}},
+        {'BuildImages': {'images': '-c populate_sdk_ext core-image-minimal'}},
         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False}},
         {'BuildToolchainImages': {}},
         {'RunSDKSanityTests': {'images': 'core-image-sato'}},
-- 
2.5.5


