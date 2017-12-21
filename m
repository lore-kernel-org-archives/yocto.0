Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07504E00EB8; Thu, 21 Dec 2017 08:33:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EEE7E00E9E
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761493"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:23 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:27 +0200
Message-Id: <84c2e51a0d3a3adfcceb1e6a731b9cc1c21d0078.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 19/21] testimage.py: remove all iterations (over machines, over failing recipes)
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:26 -0000

This adds enormously to run time, and is not particularly necessary
when running locally. If something fails, it's best to let the maintainer sort
it out as soon as possible, rather than try to guess what needs to be excluded.

Also, do not build a separate ptest image; ptests will be added
to the standard integration testimage.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README               |   9 +++--
 modules/testimage.py | 107 ++-------------------------------------------------
 2 files changed, 9 insertions(+), 107 deletions(-)

diff --git a/README b/README
index acb22ac..84e140f 100644
--- a/README
+++ b/README
@@ -68,9 +68,12 @@ clean_sstate=yes
 # clean tmp directory before upgrading
 clean_tmp=yes
 
-# machines to test build with
-# append _libc-name to test with alternative C library implementations
-# e.g. qemux86_musl
+# Machines to test build with.
+# Append _libc-name to test with alternative C library implementations
+# e.g. qemux86_musl.
+#
+# Buildhistory and testimages will be created only for the first
+# machine in the list, as otherwise it adds enormously to AUH run time.
 machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
 
 # optional features
diff --git a/modules/testimage.py b/modules/testimage.py
index 1195916..d2479f5 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -139,46 +139,6 @@ class TestImage():
                         raise IntegrationError(e.stdout, pkg_ctx)
         raise e
 
-    def ptest(self, pkgs_ctx, machine):
-        image = 'core-image-minimal'
-        # should use bitbake API here to trim down the list to only the recipes that inherit ptest
-        ptest_pkgs = pkgs_ctx
-
-        os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
-            self._get_pkgs_to_install(ptest_pkgs, ptest=True)
-        I( "   building %s for %s ..." % (image, machine))
-        try:
-            self.bb.complete(image, machine)
-        except Error as e:
-            self._handle_image_build_error(image, pkgs_ctx, e)
-
-        os.environ['TEST_SUITES'] = "ping ssh _ptest"
-        I( "   running %s/ptest for %s ..." % (image, machine))
-        self.bb.complete("%s -c testimage" % image, machine)
-
-        ptest_log_file = self._find_log("ptest.log", machine)
-        shutil.copyfile(ptest_log_file,
-                os.path.join(self.uh_work_dir, "ptest_%s.log" % machine))
-
-        ptest_result = self._parse_ptest_log(ptest_log_file)
-        for pn in ptest_result:
-            for pkg_ctx in pkgs_ctx:
-                if not pn == pkg_ctx['PN']:
-                    continue 
-
-                if not 'ptest' in pkg_ctx:
-                    pkg_ctx['ptest'] = {}
-                if not 'ptest_log' in pkg_ctx:
-                    pkg_ctx['ptest_log'] = os.path.join(pkg_ctx['workdir'],
-                        "ptest.log")
-
-                pkg_ctx['ptest'][machine] = True
-                with open(pkg_ctx['ptest_log'], "a+") as f:
-                    f.write("BEGIN: PTEST for %s\n" % machine)
-                    for line in ptest_result[pn]:
-                        f.write(line)
-                    f.write("END: PTEST for %s\n" % machine)
-
     def testimage(self, pkgs_ctx, machine, image):
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
             self._get_pkgs_to_install(pkgs_ctx)
@@ -213,68 +173,7 @@ class TestImage():
                         of.write(line)
                     of.write("END: TESTIMAGE for %s\n" % machine)
 
-    def _log_error(self, e):
-        if isinstance(e, Error):
-            E(" %s" % e.stdout)
-        else:
-            import traceback
-            tb = traceback.format_exc()
-            E("%s" % tb)
-
-    def _handle_error(self, e, machine):
-        handled = True
-
-        if isinstance(e, IntegrationError):
-            pkg_ctx = e.pkg_ctx
-
-            E("   %s on machine %s failed in integration, removing..."
-                % (pkg_ctx['PN'], machine))
-
-            with open(os.path.join(pkg_ctx['workdir'],
-                'integration_error.log'), 'a+') as f:
-                f.write(e.stdout)
-
-            if not pkg_ctx in self.pkgs_ctx:
-                E("   Infinite loop IntegrationError trying to " \
-                   "remove %s twice, see logs.", pkg_ctx['PN'])
-                handled = False
-            else:
-                pkg_ctx['integration_error'] = e
-
-                # remove previous build tmp, sstate to avoid QA errors
-                # on lower versions
-                I("     removing sstate directory ...")
-                shutil.rmtree(os.path.join(get_build_dir(), "sstate-cache"))
-                I("     removing tmp directory ...")
-                shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
-
-                self.pkgs_ctx.remove(pkg_ctx)
-
-        else:
-            handled = False
-
-        return handled
-
     def run(self):
-        I(" Images will test for %s." % ', '.join(self.opts['machines']))
-        for machine in self.opts['machines']:
-            I("  Testing images for %s ..." % machine)
-            while True:
-                try:
-                    self.ptest(self.pkgs_ctx, machine)
-                    break
-                except Exception as e:
-                    if not self._handle_error(e, machine):
-                        E(" %s/testimage on machine %s failed" % (self.image, machine))
-                        self._log_error(e)
-                        break
-
-            while True:
-                try:
-                    self.testimage(self.pkgs_ctx, machine, self.image)
-                    break
-                except Exception as e:
-                    if not self._handle_error(e, machine):
-                        E(" %s/testimage on machine %s failed" % (self.image, machine))
-                        self._log_error(e)
-                        break
+        machine = self.opts['machines'][0]
+        I("  Testing image for %s ..." % machine)
+        self.testimage(self.pkgs_ctx, machine, self.image)
-- 
2.15.1


