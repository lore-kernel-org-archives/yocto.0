Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB035E00E92; Thu, 21 Dec 2017 08:33:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 860EEE00E88
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:20 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761461"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:19 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:23 +0200
Message-Id: <6db83742d36c91868e033ba3552dce9cda4dbb5f.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 15/21] Do not require configuration options that aren't necessary for running ptests
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:20 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README           |  6 ++----
 upgradehelper.py | 15 ---------------
 2 files changed, 2 insertions(+), 19 deletions(-)

diff --git a/README b/README
index 27b0977..acb22ac 100644
--- a/README
+++ b/README
@@ -122,10 +122,8 @@ file:
 --------------- snip ---------------
 INHERIT += "testimage"
 
-DISTRO_FEATURES_append = " ptest"
-EXTRA_IMAGE_FEATURES = "debug-tweaks package-management ptest-pkgs"
-# testimage/ptest only work with rpm
-PACKAGE_CLASSES = "package_rpm"
+# Add the following if your distro does not enable by default (poky does)
+#DISTRO_FEATURES_append = " ptest"
 --------------- snip ---------------
 
 Also if you are running in a server without X11 session, you need to start
diff --git a/upgradehelper.py b/upgradehelper.py
index cb48c47..5659735 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -251,21 +251,6 @@ class Updater(object):
                       " conf/local.conf.")
                     exit(1)
 
-                if not "package-management" in self.base_env['EXTRA_IMAGE_FEATURES']:
-                    E(" testimage requires package-management in EXTRA_IMAGE_FEATURES"\
-                      " please add to conf/local.conf.")
-                    exit(1)
-
-                if not "ptest-pkgs" in self.base_env['EXTRA_IMAGE_FEATURES']:
-                    E(" testimage/ptest requires ptest-pkgs in EXTRA_IMAGE_FEATURES"\
-                      " please add to conf/local.conf.")
-                    exit(1)
-
-                if not "package_rpm" == self.base_env["PACKAGE_CLASSES"]:
-                    E(" testimage/ptest requires PACKAGE_CLASSES set to package_rpm"\
-                      " please add to conf/local.conf.")
-                    exit(1)
-
                 enabled = True
             else:
                 E(" testimage was enabled in upgrade-helper.conf"\
-- 
2.15.1


