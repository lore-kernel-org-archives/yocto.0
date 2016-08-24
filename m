Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC767E00CC0; Wed, 24 Aug 2016 10:40:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A846E006B3
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 10:40:47 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 24 Aug 2016 10:40:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,571,1464678000"; d="scan'208";a="870551143"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.154])
	by orsmga003.jf.intel.com with ESMTP; 24 Aug 2016 10:40:45 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Aug 2016 10:40:34 -0700
Message-Id: <1472060434-14175-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] nightly-wic.conf: add additional config settings for efi images
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
X-List-Received-Date: Wed, 24 Aug 2016 17:40:49 -0000

Building efi disk images now requires extra config settings, so add
IMAGE_FSTYPES and MACHINE_FEATURES appends to the auto.conf file.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-wic.conf | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-config.controller/nightly-wic.conf
index 1b91852..14e2411 100644
--- a/buildset-config.controller/nightly-wic.conf
+++ b/buildset-config.controller/nightly-wic.conf
@@ -9,24 +9,24 @@ steps: [{'SetDest':{}},
         {'RunPreamble':{}},
         {'GetDistroVersion':{'distro': 'poky'}},
         {'CreateBBLayersConf':{'buildprovider':'yocto'}},
-        {'CreateAutoConf':{'machine':'qemux86'}},
+        {'CreateAutoConf':{'machine':'qemux86', 'atextappend':'\nIMAGE_FSTYPES += " hddimg"\nMACHINE_FEATURES_append = " efi"\n'}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
-        {'CreateAutoConf':{'machine':'genericx86'}},
+        {'CreateAutoConf':{'machine':'genericx86', 'atextappend':'\nIMAGE_FSTYPES += " hddimg"\nMACHINE_FEATURES_append = " efi"\n'}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
-        {'CreateAutoConf':{'machine':'qemux86-64'}},
+        {'CreateAutoConf':{'machine':'qemux86-64', 'atextappend':'\nIMAGE_FSTYPES += " hddimg"\nMACHINE_FEATURES_append = " efi"\n'}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
-        {'CreateAutoConf':{'machine':'genericx86-64'}},
+        {'CreateAutoConf':{'machine':'genericx86-64', 'atextappend':'\nIMAGE_FSTYPES += " hddimg"\nMACHINE_FEATURES_append = " efi"\n'}},
         {'BuildImages':{'images':'syslinux syslinux-native parted-native gptfdisk-native dosfstools-native mtools-native'}},
         {'BuildImages':{'images':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
-- 
2.5.5


