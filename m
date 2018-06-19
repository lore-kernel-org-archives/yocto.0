Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53A73E00CE7; Tue, 19 Jun 2018 01:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E3E0E00CE7
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2018 01:05:41 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jun 2018 01:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,242,1526367600"; d="scan'208";a="238353058"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.106])
	by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2018 01:05:39 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Jun 2018 16:05:35 +0800
Message-Id: <1529395535-8886-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder2] Add nightly-x86-64-bsp job to enable BSP HW Testcase
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
X-List-Received-Date: Tue, 19 Jun 2018 08:05:42 -0000

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.json | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/config.json b/config.json
index 808fefc..e79fae3 100644
--- a/config.json
+++ b/config.json
@@ -230,6 +230,23 @@
                 "MACHINE" : "genericx86-64"
             }
         },
+        "nightly-x86-64-bsp" : {
+            "MACHINE" : "intel-corei7-64",
+            "SDKMACHINE" : "x86_64",
+            "BBTARGETS" : "core-image-sato-sdk",
+            "extravars" : [
+                "DISTRO_FEATURES_append = \" systemd\"",
+                "IMAGE_INSTALL_append = \" udev util-linux systemd\"",
+                "IMAGE_FSTYPES = \"tar.gz\"",
+                "CORE_IMAGE_EXTRA_INSTALL += \"python3 python3-pip python-pip git socat apt dpkg openssh\""
+            ],
+            "NEEDREPOS" : ["poky", "meta-intel", "meta-minnow", "meta-openembedded"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-intel",
+                "${BUILDDIR}/../meta-minnow",
+                "${BUILDDIR}/../meta-openembedded/meta-python"
+            ]
+        },
         "nightly-world" : {
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
@@ -738,6 +755,11 @@
             "url" : "git://git.yoctoproject.org/meta-gplv2",
             "branch" : "master",
             "revision" : "HEAD"
+        },
+        "meta-minnow" : {
+            "url" : "https://github.com/alimhussin2/meta-minnow",
+            "branch" : "master",
+            "revision" : "HEAD"
         }
     }
 }
-- 
2.7.4


