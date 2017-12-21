Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFF9CE00EB8; Thu, 21 Dec 2017 08:33:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 437DCE00E9E
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761500"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:25 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:28 +0200
Message-Id: <5cfb01a20755a4218a764e31e2aa23e7a992bc24.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 20/21] testimage.py: rewrite the logic for building and running testimages
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:27 -0000

Particularly:
1) determine per-package if ptest is supported, and add to the list
of packages to install accordingly
2) remove broken code that finds image logs in the build directory;
this will be replaced in the following commit
3) remove code that parses said logs for specific package failures;
this is prone to mistmatches and is best left to a human.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 modules/testimage.py | 115 +++++----------------------------------------------
 1 file changed, 10 insertions(+), 105 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index d2479f5..699d619 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -50,129 +50,34 @@ class TestImage():
         self.image = image
 
         os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
-            " TEST_SUITES CORE_IMAGE_EXTRA_INSTALL"
+            " CORE_IMAGE_EXTRA_INSTALL"
 
-    def _get_pkgs_to_install(self, pkgs, ptest=False):
+    def _get_pkgs_to_install(self, pkgs):
         pkgs_out = []
 
-        # for provide access to the target
-        if ptest:
-            pkgs_out.append("dropbear")
-            pkgs_out.append("ptest-runner")
-
         for c in pkgs:
             pkgs_out.append(c['PN'])
 
-        return ' '.join(pkgs_out)
-
-    def _parse_ptest_log(self, log_file):
-        ptest_results = {}
-
-        with open(log_file, "r") as f:
-            pn = None
-            processing = False
-
-            for line in f:
-                if not processing:
-                    m = re.search("^BEGIN: /usr/lib/(.*)/ptest$", line)
-                    if m:
-                        pn = m.group(1)
-                        ptest_results[pn] = []
-                        processing = True
-                else:
-                    m = re.search("^END: $", line)
-                    if m:
-                        pn = None
-                        processing = False
-                    else:
-                        ptest_results[pn].append(line)
-
-        return ptest_results
-
-    def _find_log(self, name, machine):
-        result = []
-
-        base_dir = os.path.join(os.getenv('BUILDDIR'), 'tmp', 'work')
-        for root, dirs, files in os.walk(base_dir):
-            if name in files:
-                result.append(os.path.join(root, name))
-
-        D("Found logs named %s for machine %s: %s" %(name, machine, result))
-        for ptest_log in result:
-            if machine in ptest_log:
-                D("Picked log: %s" %(ptest_log))
-                return ptest_log
-
-    def _get_failed_recipe(self, log):
-        pn = None
-
-        for line in log.splitlines():
-            m = re.match("ERROR: QA Issue: ([^ :]*): (.*) not shipped", line)
-            if m:
-                pn = m.group(1)
-                break
-
-            m = re.match("ERROR: Logfile of failure stored in: " \
-                "(.*/([^/]*)/[^/]*/temp/log\.(.*)\.[0-9]*)", line)
-            if m:
-                pn = m.group(2)
-                break
-
-        return pn
-
-    def _handle_image_build_error(self, image, pkgs_ctx, e):
-        pn = self._get_failed_recipe(e.stdout)
-        if pn and pn != image:
-            pkg_ctx = _pn_in_pkgs_ctx(pn, pkgs_ctx)
-            if pkg_ctx:
-                raise IntegrationError(e.stdout, pkg_ctx)
+            I(" Checking if package {} has ptests...".format(c['PN']))
+            if 'PTEST_ENABLED' in self.bb.env(c['PN']):
+                I("  ...yes")
+                pkgs_out.append((c['PN']) + '-ptest')
             else:
-                pn_env = self.bb.env(pn)
-
-                depends = pn_env['DEPENDS'].split()
-                rdepends = pn_env['RDEPENDS'].split()
-                deps = depends + rdepends
+                I("  ...no")
 
-                for d in deps:
-                    pkg_ctx = _pn_in_pkgs_ctx(d, pkgs_ctx)
-                    if pkg_ctx:
-                        raise IntegrationError(e.stdout, pkg_ctx)
-        raise e
+        return ' '.join(pkgs_out)
 
     def testimage(self, pkgs_ctx, machine, image):
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
             self._get_pkgs_to_install(pkgs_ctx)
-
-        if 'TEST_SUITES' in os.environ:
-            del os.environ['TEST_SUITES']
+        I( " Installing additional packages to the image: {}".format(os.environ['CORE_IMAGE_EXTRA_INSTALL']))
 
         I( "   building %s for %s ..." % (image, machine))
-        try:
-            self.bb.complete(image, machine)
-        except Error as e:
-            self._handle_image_build_error(image, pkgs_ctx, e)
+        self.bb.complete(image, machine)
 
         I( "   running %s/testimage for %s ..." % (image, machine))
         self.bb.complete("%s -c testimage" % image, machine)
 
-        log_file = self._find_log("log.do_testimage", machine)
-        shutil.copyfile(log_file,
-                os.path.join(self.uh_work_dir, "log_%s.do_testimage" % machine))
-        for pkg_ctx in pkgs_ctx:
-            if not 'testimage' in pkg_ctx:
-                pkg_ctx['testimage'] = {}
-            if not 'testimage_log' in pkg_ctx:
-                pkg_ctx['testimage_log'] = os.path.join(
-                    pkg_ctx['workdir'], "log.do_testimage")
-
-            pkg_ctx['testimage'][machine] = True
-            with open(log_file, "r") as lf:
-                with open(pkg_ctx['testimage_log'], "a+") as of:
-                    of.write("BEGIN: TESTIMAGE for %s\n" % machine)
-                    for line in lf:
-                        of.write(line)
-                    of.write("END: TESTIMAGE for %s\n" % machine)
-
     def run(self):
         machine = self.opts['machines'][0]
         I("  Testing image for %s ..." % machine)
-- 
2.15.1


