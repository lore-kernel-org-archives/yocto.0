Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04594E00D9C; Thu, 14 Dec 2017 08:35:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95535E00D98
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726616"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:32 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:48 +0200
Message-Id: <ba5d1c48a56de0db18b5b42d04e96e9fc9a56a4b.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 08/20] testimage.py: do not manipulate branches
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:34 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

AUH simply creates a series of commits now, so we can create and
run testimage directly on the branch we're on.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/testimage.py | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index da5c433..23d38d4 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -75,33 +75,6 @@ class TestImage():
 
         return ' '.join(pkgs_out)
 
-    def prepare_branch(self, pkgs_ctx):
-        ok = False
-
-        try:
-            self.git.reset_hard()
-            self.git.checkout_branch("master")
-
-            try:
-                self.git.delete_branch("testimage")
-            except Error:
-                pass
-
-            self.git.create_branch("testimage")
-            for c in pkgs_ctx:
-                patch_file = os.path.join(c['workdir'], c['patch_file'])
-                try:
-                    self.git.apply_patch(patch_file)
-                except Exception as e:
-                    c['integration_error'] = e
-                    self.git.abort_patch()
-
-            ok = True
-        except Exception as e:
-            self._log_error(" testimage: Failed to prepare branch.")
-
-        return ok
- 
     def _parse_ptest_log(self, log_file):
         ptest_results = {}
 
@@ -284,8 +257,6 @@ class TestImage():
 
                 self.pkgs_ctx.remove(pkg_ctx)
 
-                if not self.prepare_branch(self.pkgs_ctx):
-                    handled = False
         else:
             handled = False
 
@@ -296,9 +267,6 @@ class TestImage():
             I(" Testimage was enabled but any upgrade was successful.")
             return
 
-        if not self.prepare_branch(self.pkgs_ctx):
-           return
-
         I(" Images will test for %s." % ', '.join(self.opts['machines']))
         for machine in self.opts['machines']:
             I("  Testing images for %s ..." % machine)
-- 
2.15.0


