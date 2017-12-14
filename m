Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CEDFE00DA3; Thu, 14 Dec 2017 08:35:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C090CE00D7B
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:39 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726637"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:38 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:53 +0200
Message-Id: <a978cc760f72321073c9363b3c84fdfc3ea2613c.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 13/20] testimage.py: do not call into removed code
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:40 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

This was using the removed recipe parsing code to determine if
a package supports ptest; it should be replaced with using bitbake API
but for now we can simply add all update packages to the list.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/testimage.py | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index 23d38d4..c3352e5 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -53,15 +53,6 @@ class TestImage():
         os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
             " TEST_SUITES CORE_IMAGE_EXTRA_INSTALL"
 
-    def _get_ptest_pkgs(self, pkgs_ctx):
-        pkgs = []
-
-        for c in pkgs_ctx:
-            if "ptest" in c['recipe'].get_inherits():
-                pkgs.append(c)
-
-        return pkgs
-
     def _get_pkgs_to_install(self, pkgs, ptest=False):
         pkgs_out = []
 
@@ -149,7 +140,8 @@ class TestImage():
 
     def ptest(self, pkgs_ctx, machine):
         image = 'core-image-minimal'
-        ptest_pkgs = self._get_ptest_pkgs(pkgs_ctx)
+        # should use bitbake API here to trim down the list to only the recipes that inherit ptest
+        ptest_pkgs = pkgs_ctx
 
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
             self._get_pkgs_to_install(ptest_pkgs, ptest=True)
-- 
2.15.0


