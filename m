Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAABEE00F69; Fri, 22 Jul 2016 10:35:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39D19E00D88
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 10:35:31 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 22 Jul 2016 10:35:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,405,1464678000"; d="scan'208";a="143919135"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.109.9])
	by fmsmga004.fm.intel.com with ESMTP; 22 Jul 2016 10:35:30 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Jul 2016 10:35:28 -0700
Message-Id: <1469208928-7711-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-wic.conf: build genericx86 wic images
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
X-List-Received-Date: Fri, 22 Jul 2016 17:35:32 -0000

QA requested wic images for genericx86, as well as x86-64 so include
config and build for them.

[YOCTO #10006]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-wic.conf | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-config.controller/nightly-wic.conf
index 27584cb..47565ba 100644
--- a/buildset-config.controller/nightly-wic.conf
+++ b/buildset-config.controller/nightly-wic.conf
@@ -9,6 +9,12 @@ steps: [{'SetDest':{}},
         {'RunPreamble':{}},
         {'GetDistroVersion':{'distro': 'poky'}},
         {'CreateBBLayersConf':{'buildprovider':'yocto'}},
+        {'CreateAutoConf':{'machine':'genericx86'}},
+        {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
+        {'BuildImages':{'images':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
         {'CreateAutoConf':{'machine':'qemux86-64'}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
@@ -20,5 +26,5 @@ steps: [{'SetDest':{}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
-        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64']}}]
+        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86', 'genericx86-64']}}]
 
-- 
2.5.5


