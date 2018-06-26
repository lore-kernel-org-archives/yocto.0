Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 620C5E01119; Tue, 26 Jun 2018 01:51:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E832EE00E8C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 01:51:10 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jun 2018 01:51:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,274,1526367600"; d="scan'208";a="62251793"
Received: from aaronchu-mobl1.png.intel.com ([10.221.17.73])
	by orsmga003.jf.intel.com with ESMTP; 26 Jun 2018 01:51:08 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ee.peng.yeoh@intel.com
Date: Tue, 26 Jun 2018 16:51:06 +0800
Message-Id: <1530003066-28005-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] Add qemux86, qemux86-64 WIC testimage buildset-config
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
X-List-Received-Date: Tue, 26 Jun 2018 08:51:11 -0000

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.json | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index c9dc21e..3c1f989 100644
--- a/config.json
+++ b/config.json
@@ -383,6 +383,36 @@
             ],
             "step1" : {
                 "MACHINE" : "qemux86",
+                "SDKMACHINE" : "x86_64",
+                "DISTRO" : "poky-lsb",
+                "BBTARGETS" : "wic-tools core-image-lsb-sdk",
+                "EXTRACMDS" : [
+                    "wic create directdisk -e core-image-lsb-sdk -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-lsb-sdk/",
+                    "wic create directdisk-gpt -e core-image-lsb-sdk -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-lsb-sdk/",
+                    "wic create mkefidisk -e core-image-lsb-sdk -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-lsb-sdk/"
+                ],
+                "extravars" : [
+                    "IMAGES_FSTYPES += ' wic'"
+                ],
+                "SANITYTARGETS" : "core-image-lsb-sdk:do_testimage"
+            },
+            "step2" : {
+                "MACHINE" : "qemux86-64",
+                "SDKMACHINE" : "x86_64",
+                "DISTRO" : "poky-lsb",
+                "BBTARGETS" : "wic-tools core-image-lsb-sdk",
+                "EXTRACMDS" : [
+                    "wic create directdisk -e core-image-lsb-sdk -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-lsb-sdk/",
+                    "wic create directdisk-gpt -e core-image-lsb-sdk -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-lsb-sdk/",
+                    "wic create mkefdisk -e core-image-lsb-sdk -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86-64/directdisk/core-image-lsb-sdk/"
+                ],
+                "extravars" : [
+                    "IMAGES_FSTYPES += ' wic'"
+                ],
+                "SANITYTARGETS" : "core-image-lsb-sdk:do_testimage"
+            },
+            "step3" : {
+                "MACHINE" : "qemux86",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
                     "wic create directdisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/",
@@ -390,7 +420,7 @@
                     "wic create mkefidisk -e core-image-sato -o ${BUILDDIR}/tmp/deploy/wic_images/qemux86/directdisk/core-image-sato/"
                 ]
             },
-            "step2" : {
+            "step4" : {
                 "MACHINE" : "genericx86",
                 "BBTARGETS" : "wic-tools core-image-sato",
                 "EXTRACMDS" : [
-- 
2.7.4


