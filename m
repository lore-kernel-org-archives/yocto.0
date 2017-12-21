Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 076AFE00EB8; Thu, 21 Dec 2017 08:33:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB5DE00E9E
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761509"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:26 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:29 +0200
Message-Id: <7de21dc12bb1f1e972010d39975e986c2a906d00.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 21/21] testimage.py: collect and write out logs from bitbake and testimage
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:28 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 modules/testimage.py | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index 699d619..35e23c9 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -49,8 +49,11 @@ class TestImage():
         self.pkgs_ctx = packages['succeeded']
         self.image = image
 
+        self.logdir = os.path.join(uh_work_dir, "testimage-logs")
+        os.mkdir(self.logdir)
+
         os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
-            " CORE_IMAGE_EXTRA_INSTALL"
+            " CORE_IMAGE_EXTRA_INSTALL TEST_LOG_DIR TESTIMAGE_UPDATE_VARS"
 
     def _get_pkgs_to_install(self, pkgs):
         pkgs_out = []
@@ -70,13 +73,33 @@ class TestImage():
     def testimage(self, pkgs_ctx, machine, image):
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
             self._get_pkgs_to_install(pkgs_ctx)
+        os.environ['TEST_LOG_DIR'] = self.logdir
+        os.environ['TESTIMAGE_UPDATE_VARS'] = 'TEST_LOG_DIR'
         I( " Installing additional packages to the image: {}".format(os.environ['CORE_IMAGE_EXTRA_INSTALL']))
 
         I( "   building %s for %s ..." % (image, machine))
-        self.bb.complete(image, machine)
+        bitbake_create_output = ""
+        bitbake_run_output = ""
+        try:
+            bitbake_create_output = self.bb.complete(image, machine)
+        except Error as e:
+            I( "   building the testimage failed! Collecting logs...")
+            bitbake_create_output = e.stdout
+        else:
+            I( "   running %s/testimage for %s ..." % (image, machine))
+            try:
+                bitbake_run_output = self.bb.complete("%s -c testimage" % image, machine)
+            except Error as e:
+                I( "   running the testimage failed! Collecting logs...")
+                bitbake_run_output = e.stdout
 
-        I( "   running %s/testimage for %s ..." % (image, machine))
-        self.bb.complete("%s -c testimage" % image, machine)
+        if bitbake_create_output:
+            with open(os.path.join(self.logdir, "bitbake-create-testimage.log"), 'w') as f:
+                f.write(bitbake_create_output)
+        if bitbake_run_output:
+            with open(os.path.join(self.logdir, "bitbake-run-testimage.log"), 'w') as f:
+                f.write(bitbake_run_output)
+        I(" All done! Testimage/ptest/qemu logs are collected to {}".format(self.logdir))
 
     def run(self):
         machine = self.opts['machines'][0]
-- 
2.15.1


