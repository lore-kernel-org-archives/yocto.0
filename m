Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B00BE010F3; Fri, 13 Jul 2018 04:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7AB7E00C76
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 04:41:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jul 2018 04:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,347,1526367600"; d="scan'208";a="66670699"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.53])
	by orsmga003.jf.intel.com with ESMTP; 13 Jul 2018 04:41:16 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Fri, 13 Jul 2018 19:41:12 +0800
Message-Id: <1531482072-13524-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] config-intelqa-x86_64-lava.json: Update job-config to enable BSP on Minnowboard (x86_64)
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
X-List-Received-Date: Fri, 13 Jul 2018 11:41:19 -0000

This patch is to update the nightly-x86-64-bsp job configuration
and include the TEST_TARGET_IP, TEST_SERVER_IP & TEST_SUITES to
enable OEQA Automated BSP test case(s) using server client connection.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config-intelqa-x86_64-lava.json | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/config-intelqa-x86_64-lava.json b/config-intelqa-x86_64-lava.json
index 81e248d..9713b47 100644
--- a/config-intelqa-x86_64-lava.json
+++ b/config-intelqa-x86_64-lava.json
@@ -1,7 +1,10 @@
 {
     "overrides" : {
         "nightly-x86-64-bsp" : {
-            "NEEDREPOS" : ["poky", "meta-intel", "meta-openembedded"],
+            "MACHINE" : "intel-corei7-64",
+            "DEPLOY_DIR" : "/srv/data/builds/",
+            "DEPLOY_DIR_IMAGE" : "${DEPLOY_DIR}/images/${MACHINE}/",
+            "NEEDREPOS" : ["poky", "meta-intel"],
 	    "step1" : {
                 "MACHINE" : "intel-corei7-64",
                 "SDKMACHINE" : "x86_64",
@@ -9,11 +12,19 @@
                     "DISTRO_FEATURES_append = \" systemd\"",
                     "IMAGE_INSTALL_append = \" udev util-linux systemd\"",
                     "CORE_IMAGE_EXTRA_INSTALL_append += \"python3 python3-pip python-pip git socat apt dpkg openssh\"",
-                    "IMAGE_FSTYPES = \"tar.gz\""
+                    "IMAGE_FSTYPES = \"tar.gz\"",
+                    "TEST_SUITES_append = \" manualbsp\"",
+                    "TEST_TARGET = \"simpleremote\"",
+                    "TEST_SERVER_IP = \"${SERVER_IP}\"",
+                    "TEST_TARGET_IP = \"${TARGET_IP}\""
                 ],
                 "ADDLAYER" : [
                     "../meta-intel",
-                    "../meta-openembedded"
+                    "../meta-openembedded/meta-oe",
+                    "../meta-openembedded/meta-python",
+                    "../meta-openembedded/meta-perl",
+                    "../meta-openembedded/meta-networking",
+                    "../meta-security"
                 ],
                 "BBTARGETS" : "core-image-sato-sdk"
             }
-- 
2.7.4


