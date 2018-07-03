Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E156E0135D; Tue,  3 Jul 2018 01:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B2EE00C2B
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 01:40:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2018 01:40:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,302,1526367600"; d="scan'208";a="64029179"
Received: from aaronchu-mobl1.png.intel.com ([10.221.22.199])
	by orsmga003.jf.intel.com with ESMTP; 03 Jul 2018 01:40:57 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 16:40:54 +0800
Message-Id: <1530607254-8362-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] Extend LAVA buildset JSON to ABHELPER
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
X-List-Received-Date: Tue, 03 Jul 2018 08:41:00 -0000

This patch is an extension to default config.json with ABHELPER_JSON env set.
This extension is to support buildset config for target MACHINE intel-corei7-64
with meta-intel layer included.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config-x86_64-lava.json | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 config-x86_64-lava.json

diff --git a/config-x86_64-lava.json b/config-x86_64-lava.json
new file mode 100644
index 0000000..81e248d
--- /dev/null
+++ b/config-x86_64-lava.json
@@ -0,0 +1,34 @@
+{
+    "overrides" : {
+        "nightly-x86-64-bsp" : {
+            "NEEDREPOS" : ["poky", "meta-intel", "meta-openembedded"],
+	    "step1" : {
+                "MACHINE" : "intel-corei7-64",
+                "SDKMACHINE" : "x86_64",
+                "extravars" : [
+                    "DISTRO_FEATURES_append = \" systemd\"",
+                    "IMAGE_INSTALL_append = \" udev util-linux systemd\"",
+                    "CORE_IMAGE_EXTRA_INSTALL_append += \"python3 python3-pip python-pip git socat apt dpkg openssh\"",
+                    "IMAGE_FSTYPES = \"tar.gz\""
+                ],
+                "ADDLAYER" : [
+                    "../meta-intel",
+                    "../meta-openembedded"
+                ],
+                "BBTARGETS" : "core-image-sato-sdk"
+            }
+        }
+    },
+    "repo-defaults" : {
+        "meta-intel" : {
+            "url" : "git://git.yoctoproject.org/meta-intel",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
+        "meta-openembedded" : {
+            "url" : "git://git.openembedded.org/meta-openembedded",
+            "branch" : "master",
+            "revision" : "HEAD"
+        }
+    }
+}
-- 
2.7.4


