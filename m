Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37713E00B03; Tue,  1 Dec 2015 14:02:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C47E00AE6
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 14:02:55 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 01 Dec 2015 14:02:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,370,1444719600"; d="scan'208";a="610892756"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2015 14:02:53 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Dec 2015 16:03:40 -0600
Message-Id: <1449007421-26206-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449007421-26206-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 5/6] testimage: Add handling of IntegrationError
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
X-List-Received-Date: Tue, 01 Dec 2015 22:02:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

A recipe can compile alone when the upgrade proccess is made
but when integrate it can fail due to dependencies of another
recipes.

If build image fail then analyze logs to find what recipe failed
if recipe is found directly on the set of recipe upgrades remove it,
if not recipe found directly then search within dependencies of
failed recipe.

Since IntegrationError can happen now, move the statistics update and
directory symlink creation after testimage.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/errors.py    |  9 ++++++
 modules/testimage.py | 69 +++++++++++++++++++++++++++++++---------
 upgradehelper.py     | 89 +++++++++++++++++++++++++++++++++++-----------------
 3 files changed, 125 insertions(+), 42 deletions(-)

diff --git a/modules/errors.py b/modules/errors.py
index 1504fa5..9f8f37f 100644
--- a/modules/errors.py
+++ b/modules/errors.py
@@ -91,3 +91,12 @@ class EmptyEnvError(Error):
 
     def __str__(self):
         return "Failed(get_env)"
+
+class IntegrationError(Error):
+    def __init__(self, stdout, pkg_ctx):
+        super(IntegrationError, self).__init__("Failed to build %s in testimage branch"
+                % pkg_ctx['PN'], stdout)
+        self.pkg_ctx = pkg_ctx
+
+        def __str__(self):
+            return "Failed(integrate)"
diff --git a/modules/testimage.py b/modules/testimage.py
index 52e2592..4a254af 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -35,20 +35,25 @@ from logging import critical as C
 from errors import *
 from utils.bitbake import *
 
+def _pn_in_pkgs_ctx(pn, pkgs_ctx):
+    for c in pkgs_ctx:
+        if pn == c['PN']:
+            return c
+    return None
+
 class TestImage():
-    def __init__(self, bb, git, uh_work_dir, pkgs_ctx):
+    def __init__(self, bb, git, uh_work_dir):
         self.bb = bb
         self.git = git
         self.uh_work_dir = uh_work_dir
-        self.pkgs_ctx = pkgs_ctx
 
         os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
             " TEST_SUITES CORE_IMAGE_EXTRA_INSTALL"
 
-    def _get_ptest_pkgs(self):
+    def _get_ptest_pkgs(self, pkgs_ctx):
         pkgs = []
 
-        for c in self.pkgs_ctx:
+        for c in pkgs_ctx:
             if "ptest" in c['recipe'].get_inherits():
                 pkgs.append(c)
 
@@ -67,7 +72,7 @@ class TestImage():
 
         return ' '.join(pkgs_out)
 
-    def prepare_branch(self):
+    def prepare_branch(self, pkgs_ctx):
         self.git.checkout_branch("master")
         try:
             self.git.delete_branch("testimage")
@@ -77,7 +82,7 @@ class TestImage():
         self.git.reset_hard()
 
         self.git.create_branch("testimage")
-        for c in self.pkgs_ctx:
+        for c in pkgs_ctx:
             patch_file = os.path.join(c['workdir'], c['patch_file'])
             self.git.apply_patch(patch_file)
 
@@ -117,13 +122,46 @@ class TestImage():
             if machine in ptest_log:
                 return ptest_log
 
-    def ptest(self, machine):
-        ptest_pkgs = self._get_ptest_pkgs()
+    def _get_failed_recipe(self, log):
+        pn = None
+
+        for line in log.splitlines():
+            m = re.match("ERROR: Logfile of failure stored in: " \
+                "(.*/([^/]*)/[^/]*/temp/log\.(.*)\.[0-9]*)", line)
+            if m:
+                pn = m.group(2)
+
+        return pn
+
+    def _handle_image_build_error(self, pkgs_ctx, e):
+        pn = self._get_failed_recipe(e.stdout)
+        if pn:
+            pkg_ctx = _pn_in_pkgs_ctx(pn, pkgs_ctx)
+            if pkg_ctx:
+                raise IntegrationError(e.stdout, pkg_ctx)
+            else:
+                pn_env = self.bb.env(pn)
+
+                depends = pn_env['DEPENDS'].split()
+                rdepends = pn_env['RDEPENDS'].split()
+                deps = depends + rdepends
+
+                for d in deps:
+                    pkg_ctx = _pn_in_pkgs_ctx(d, pkgs_ctx)
+                    if pkg_ctx:
+                        raise IntegrationError(e.stdout, pkg_ctx)
+        raise e
+
+    def ptest(self, pkgs_ctx, machine):
+        ptest_pkgs = self._get_ptest_pkgs(pkgs_ctx)
 
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
             self._get_pkgs_to_install(ptest_pkgs, ptest=True)
         I( "   building core-image-minimal for %s ..." % machine)
-        self.bb.complete("core-image-minimal", machine)
+        try:
+            self.bb.complete("core-image-minimal", machine)
+        except Error as e:
+            self._handle_image_build_error(pkgs_ctx, e)
 
         os.environ['TEST_SUITES'] = "ping ssh _ptest"
         I( "   running core-image-minimal/ptest for %s ..." % machine)
@@ -135,7 +173,7 @@ class TestImage():
 
         ptest_result = self._parse_ptest_log(ptest_log_file)
         for pn in ptest_result:
-            for pkg_ctx in self.pkgs_ctx:
+            for pkg_ctx in pkgs_ctx:
                 if not pn == pkg_ctx['PN']:
                     continue 
 
@@ -152,15 +190,18 @@ class TestImage():
                         f.write(line)
                     f.write("END: PTEST for %s\n" % machine)
 
-    def testimage(self, machine, image):
+    def testimage(self, pkgs_ctx, machine, image):
         os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
-            self._get_pkgs_to_install(self.pkgs_ctx)
+            self._get_pkgs_to_install(pkgs_ctx)
 
         if 'TEST_SUITES' in os.environ:
             del os.environ['TEST_SUITES']
 
         I( "   building %s for %s ..." % (image, machine))
-        self.bb.complete(image, machine)
+        try:
+            self.bb.complete(image, machine)
+        except Error as e:
+            self._handle_image_build_error(pkgs_ctx, e)
 
         I( "   running %s/testimage for %s ..." % (image, machine))
         self.bb.complete("%s -c testimage" % image, machine)
@@ -168,7 +209,7 @@ class TestImage():
         log_file = self._find_log("log.do_testimage", machine)
         shutil.copyfile(log_file,
                 os.path.join(self.uh_work_dir, "log_%s.do_testimage" % machine))
-        for pkg_ctx in self.pkgs_ctx:
+        for pkg_ctx in pkgs_ctx:
             if not 'testimage' in pkg_ctx:
                 pkg_ctx['testimage'] = {}
             if not 'testimage_log' in pkg_ctx:
diff --git a/upgradehelper.py b/upgradehelper.py
index 5a2b844..19327c8 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -550,10 +550,7 @@ class Updater(object):
                     if msg is not None:
                         I(" %s: %s" % (pkg_ctx['PN'], msg))
                     step(self.bb, self.git, self.opts, pkg_ctx)
-
                 succeeded_pkgs_ctx.append(pkg_ctx)
-                os.symlink(pkg_ctx['workdir'], os.path.join( \
-                    self.uh_recipes_succeed_dir, pkg_ctx['PN']))
 
                 I(" %s: Upgrade SUCCESSFUL! Please test!" % pkg_ctx['PN'])
             except Exception as e:
@@ -575,21 +572,16 @@ class Updater(object):
                             % (pkg_ctx['PN'], pkg_ctx['workdir']))
 
                 pkg_ctx['error'] = e
-
                 failed_pkgs_ctx.append(pkg_ctx)
-                os.symlink(pkg_ctx['workdir'], os.path.join( \
-                    self.uh_recipes_failed_dir, pkg_ctx['PN']))
 
             self.commit_changes(pkg_ctx)
-            self.statistics.update(pkg_ctx['PN'], pkg_ctx['NPV'],
-                    pkg_ctx['MAINTAINER'], pkg_ctx['error'])
 
         if self.opts['testimage']:
             if len(succeeded_pkgs_ctx) > 0:
-                tim = TestImage(self.bb, self.git, self.uh_work_dir, succeeded_pkgs_ctx)
+                tim = TestImage(self.bb, self.git, self.uh_work_dir)
 
                 try:
-                    tim.prepare_branch()
+                    tim.prepare_branch(succeeded_pkgs_ctx)
                 except Exception as e:
                     E(" testimage: Failed to prepare branch.")
                     if isinstance(e, Error):
@@ -599,31 +591,72 @@ class Updater(object):
                 I(" Images will test for %s." % ', '.join(self.opts['machines']))
                 for machine in self.opts['machines']:
                     I("  Testing images for %s ..." % machine)
-                    try:
-                        tim.ptest(machine)
-                    except Exception as e:
-                        E(" core-image-minimal/ptest on machine %s failed" % machine)
-                        if isinstance(e, Error):
-                            E(" %s" % e.stdout)
-                        else:
-                            import traceback
-                            traceback.print_exc(file=sys.stdout)
+                    while True:
+                        try:
+                            tim.ptest(succeeded_pkgs_ctx, machine)
+                            break
+                        except IntegrationError as e:
+                            E("   %s on machine %s failed in integration, removing..." 
+                                % (pkg_ctx['PN'], machine))
+
+                            with open(os.path.join(pkg_ctx['workdir'],
+                                'integration_error.log'), 'w+') as f:
+                                f.write(e.stdout)
+
+                            pkg_ctx['error'] = e
+                            failed_pkgs_ctx.append(pkg_ctx)
+                            succeeded_pkgs_ctx.remove(pkg_ctx)
+                            tim.prepare_branch(succeeded_pkgs_ctx)
+                        except Exception as e:
+                            E(" core-image-minimal/ptest on machine %s failed" % machine)
+                            if isinstance(e, Error):
+                                E(" %s" % e.stdout)
+                            else:
+                                import traceback
+                                traceback.print_exc(file=sys.stdout)
+
+                            break
 
                     image = settings.get('testimage_name', DEFAULT_TESTIMAGE)
-                    try:
-                        tim.testimage(machine, image)
-                    except Exception as e:
-                        E(" %s/testimage on machine %s failed" % (image, machine))
-                        if isinstance(e, Error):
-                            E(" %s" % e.stdout)
-                        else:
-                            import traceback
-                            traceback.print_exc(file=sys.stdout)
+                    while True:
+                        try:
+                            tim.testimage(succeeded_pkgs_ctx, machine, image)
+                            break
+                        except IntegrationError as e:
+                            E("    %s on machine %s failed in integration, removing..." 
+                                % (pkg_ctx['PN'], machine))
+
+                            with open(os.path.join(pkg_ctx['workdir'],
+                                'integration_error.log'), 'w+') as f:
+                                f.write(e.stdout)
+
+                            pkg_ctx['error'] = e
+                            failed_pkgs_ctx.append(pkg_ctx)
+                            succeeded_pkgs_ctx.remove(pkg_ctx)
+                            tim.prepare_branch(succeeded_pkgs_ctx)
+                        except Exception as e:
+                            E(" %s/testimage on machine %s failed" % (image, machine))
+                            if isinstance(e, Error):
+                                E(" %s" % e.stdout)
+                            else:
+                                import traceback
+                                traceback.print_exc(file=sys.stdout)
+                            break
             else:
                 I(" Testimage was enabled but any upgrade was successful.")
 
         for pn in pkgs_ctx.keys():
             pkg_ctx = pkgs_ctx[pn]
+
+            if pkg_ctx in succeeded_pkgs_ctx:
+                os.symlink(pkg_ctx['workdir'], os.path.join( \
+                    self.uh_recipes_succeed_dir, pkg_ctx['PN']))
+            else:
+                os.symlink(pkg_ctx['workdir'], os.path.join( \
+                    self.uh_recipes_failed_dir, pkg_ctx['PN']))
+
+            self.statistics.update(pkg_ctx['PN'], pkg_ctx['NPV'],
+                    pkg_ctx['MAINTAINER'], pkg_ctx['error'])
             self.pkg_upgrade_handler(pkg_ctx)
 
         if attempted_pkgs > 0:
-- 
2.1.4


