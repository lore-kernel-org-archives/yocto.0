Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F946E0095F; Fri, 19 Aug 2016 10:54:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	TVD_SPACE_RATIO,
	TVD_SPACE_RATIO_MINFP autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
	*  0.0 TVD_SPACE_RATIO_MINFP Space ratio
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F75FE0086E
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 10:54:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 19 Aug 2016 10:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,545,1464678000"; d="scan'208";a="1017485209"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.99.187])
	by orsmga001.jf.intel.com with ESMTP; 19 Aug 2016 10:54:00 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Aug 2016 10:53:51 -0700
Message-Id: <1471629231-12713-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-wic.conf: add build for qemux86
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
X-List-Received-Date: Fri, 19 Aug 2016 17:54:02 -0000

[YOCTO #10166]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-wic.conf | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-config.controller/nightly-wic.conf
index 47565ba..59ea34c 100644
--- a/buildset-config.controller/nightly-wic.conf
+++ b/buildset-config.controller/nightly-wic.conf
@@ -9,6 +9,12 @@ steps: [{'SetDest':{}},
         {'RunPreamble':{}},
         {'GetDistroVersion':{'distro': 'poky'}},
         {'CreateBBLayersConf':{'buildprovider':'yocto'}},
+        {'CreateAutoConf':{'machine':'qemux86'}},
+        {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
+        {'BuildImages':{'images':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
+        {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
         {'CreateAutoConf':{'machine':'genericx86'}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
-- 
2.5.5


