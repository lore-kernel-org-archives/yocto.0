Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23021E00E24; Mon,  9 Jul 2018 00:36:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B60E0086E
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 00:36:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Jul 2018 00:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,329,1526367600"; d="scan'208";a="73266099"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.53])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2018 00:35:55 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Mon,  9 Jul 2018 15:35:52 +0800
Message-Id: <1531121752-10525-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder] Add Manual BSP job-config into autobuilder
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
X-List-Received-Date: Mon, 09 Jul 2018 07:36:01 -0000

This patch is to add/update configuration needed to support several
hardware platforms on ARM64, x32, x86/x86-64, MIPS64, PPC on
autobuilder as new features added in 2.6 M2 and to support automated
manual BSP test case(s) for future QA releases.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.py | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/config.py b/config.py
index 2568768..ada76ac 100644
--- a/config.py
+++ b/config.py
@@ -11,6 +11,7 @@ buildertorepos = {
     "nightly-oecore": ["oecore", "bitbake"],
     "nightly-checkuri": ["poky", "meta-qt4", "meta-qt3"],
     "nightly-check-layer": ["poky", "meta-mingw", "meta-gplv2"],
+    "nightly-x86-64-bsp": ["poky", "meta-intel", "meta-security", "meta-openembedded"],
     "default": ["poky"]
 }
 
@@ -32,16 +33,18 @@ repos = {
     "meta-qt4": ["git://git.yoctoproject.org/meta-qt4", "master"],
     "meta-qt3": ["git://git.yoctoproject.org/meta-qt3", "master"],
     "meta-mingw": ["git://git.yoctoproject.org/meta-mingw", "master"],
-    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"]
+    "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
+    "meta-security": ["git://git.yoctoproject.org/meta-security", "master"],
+    "meta-openembedded": ["git://git.yoctoproject.org/meta-openembedded", "master"]
 }
 
 trigger_builders_wait = [
-    "nightly-arm", "nightly-arm-lsb", "nightly-arm64",
-    "nightly-mips", "nightly-mips-lsb", "nightly-mips64",
-    "nightly-multilib", "nightly-x32",
-    "nightly-ppc", "nightly-ppc-lsb",
-    "nightly-x86-64", "nightly-x86-64-lsb",
-    "nightly-x86", "nightly-x86-lsb",
+    "nightly-arm", "nightly-arm-lsb", "nightly-arm64", "nightly-arm-bsp", "nightly-arm64-bsp",
+    "nightly-mips", "nightly-mips-lsb", "nightly-mips64", "nightly-mips-bsp", "nightly-mips64-bsp",
+    "nightly-multilib", "nightly-x32", "nightly-x32-bsp",
+    "nightly-ppc", "nightly-ppc-lsb", "nightly-ppc-bsp",
+    "nightly-x86-64", "nightly-x86-64-lsb", "nightly-x86-64-bsp",
+    "nightly-x86", "nightly-x86-lsb", "nightly-x86-bsp",
     "nightly-packagemanagers",
     "nightly-rpm-non-rpm", "nightly-deb-non-deb",
     "build-appliance", "buildtools", "eclipse-plugin-neon",
-- 
2.7.4


