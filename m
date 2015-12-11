Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1285E00AE6; Fri, 11 Dec 2015 13:14:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F5CE00A27
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 13:14:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2015 13:14:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,415,1444719600"; d="scan'208";a="839480656"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.48])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2015 13:14:05 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Dec 2015 15:15:03 -0600
Message-Id: <1449868505-9291-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 2/4] testimage: Move run code from upgradehelper to testimage
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
X-List-Received-Date: Fri, 11 Dec 2015 21:14:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Modularize code in order to keep upgradehelper small so move
the code from main module to testimage.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/testimage.py | 107 ++++++++++++++++++++++++++++++++++++++++++++-------
 upgradehelper.py     |  85 ++++------------------------------------
 2 files changed, 102 insertions(+), 90 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index c9040ee..6329eb9 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -42,10 +42,13 @@ def _pn_in_pkgs_ctx(pn, pkgs_ctx):
     return None
 
 class TestImage():
-    def __init__(self, bb, git, uh_work_dir):
+    def __init__(self, bb, git, uh_work_dir, opts, *args, **kwargs):
         self.bb = bb
         self.git = git
         self.uh_work_dir = uh_work_dir
+        self.opts = opts
+        self.pkgs_ctx = args[0]
+        self.image = args[1]
 
         os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
             " TEST_SUITES CORE_IMAGE_EXTRA_INSTALL"
@@ -73,19 +76,29 @@ class TestImage():
         return ' '.join(pkgs_out)
 
     def prepare_branch(self, pkgs_ctx):
-        self.git.checkout_branch("master")
-        try:
-            self.git.delete_branch("testimage")
-            self.git.delete_branch("upgrades")
-        except Error:
-            pass
-        self.git.reset_hard()
-
-        self.git.create_branch("testimage")
-        for c in pkgs_ctx:
-            patch_file = os.path.join(c['workdir'], c['patch_file'])
-            self.git.apply_patch(patch_file)
+        ok = False
 
+        try:
+            self.git.reset_hard()
+            self.git.checkout_branch("master")
+
+            try:
+                self.git.delete_branch("testimage")
+            except Error:
+                pass
+
+            self.git.create_branch("testimage")
+            for c in pkgs_ctx:
+                patch_file = os.path.join(c['workdir'], c['patch_file'])
+                self.git.apply_patch(patch_file)
+
+            ok = True
+        except Exception as e:
+            E(error_msg)
+            self._log_error(" testimage: Failed to prepare branch.")
+
+        return ok
+ 
     def _parse_ptest_log(self, log_file):
         ptest_results = {}
 
@@ -224,3 +237,71 @@ class TestImage():
                     for line in lf:
                         of.write(line)
                     of.write("END: TESTIMAGE for %s\n" % machine)
+
+    def _log_error(self, e):
+        if isinstance(e, Error):
+            E(" %s" % e.stdout)
+        else:
+            import traceback
+            tb = traceback.format_exc()
+            E("%s" % tb)
+
+    def _handle_error(self, e, machine):
+        handled = True
+
+        if isinstance(e, IntegrationError):
+            pkg_ctx = e.pkg_ctx
+
+            E("   %s on machine %s failed in integration, removing..."
+                % (pkg_ctx['PN'], machine))
+
+            with open(os.path.join(pkg_ctx['workdir'],
+                'integration_error.log'), 'a+') as f:
+                f.write(e.stdout)
+
+            if not pkg_ctx in self.pkgs_ctx['succeeded']:
+                E( "Infinite loop IntegrationError trying to " \
+                   "remove %s twice, see logs.", pkg_ctx['PN'])
+                handled = False
+            else:
+                pkg_ctx['error'] = e
+                self.pkgs_ctx['failed'].append(pkg_ctx)
+                self.pkgs_ctx['succeeded'].remove(pkg_ctx)
+
+                if not self.prepare_branch(self.pkgs_ctx['succeeded']):
+                    handled = False
+        else:
+            handled = False
+
+        return handled
+
+    def run(self):
+        if len(self.pkgs_ctx['succeeded']) <= 0:
+            I(" Testimage was enabled but any upgrade was successful.")
+            return
+
+        if not self.prepare_branch(self.pkgs_ctx['succeeded']):
+           return
+
+        I(" Images will test for %s." % ', '.join(self.opts['machines']))
+        for machine in self.opts['machines']:
+            I("  Testing images for %s ..." % machine)
+            while True:
+                try:
+                    self.ptest(self.pkgs_ctx['succeeded'], machine)
+                    break
+                except Exception as e:
+                    if not self._handle_error(e, machine):
+                        E(" %s/testimage on machine %s failed" % (image, machine))
+                        self._log_error(e)
+                        break
+
+            while True:
+                try:
+                    self.testimage(self.pkgs_ctx['succeeded'], machine, self.image)
+                    break
+                except Exception as e:
+                    if not self._handle_error(e, machine):
+                        E(" %s/testimage on machine %s failed" % (image, machine))
+                        self._log_error(e)
+                        break
diff --git a/upgradehelper.py b/upgradehelper.py
index e5c2629..6f4406b 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -577,83 +577,14 @@ class Updater(object):
                     failed_pkgs_ctx.append(pkg_ctx)
 
         if self.opts['testimage']:
-            if len(succeeded_pkgs_ctx) > 0:
-                tim = TestImage(self.bb, self.git, self.uh_work_dir)
-
-                try:
-                    tim.prepare_branch(succeeded_pkgs_ctx)
-                except Exception as e:
-                    E(" testimage: Failed to prepare branch.")
-                    if isinstance(e, Error):
-                        E(" %s" % e.stdout)
-                    exit(1)
-
-                I(" Images will test for %s." % ', '.join(self.opts['machines']))
-                for machine in self.opts['machines']:
-                    I("  Testing images for %s ..." % machine)
-                    while True:
-                        try:
-                            tim.ptest(succeeded_pkgs_ctx, machine)
-                            break
-                        except IntegrationError as e:
-                            E("   %s on machine %s failed in integration, removing..." 
-                                % (pkg_ctx['PN'], machine))
-
-                            with open(os.path.join(pkg_ctx['workdir'],
-                                'integration_error.log'), 'a+') as f:
-                                f.write(e.stdout)
-
-                            if not pkg_ctx in succeeded_pkgs_ctx:
-                                E( "Infinite loop IntegrationError trying to " \
-                                   "remove %s twice, see logs.", pkg_ctx['PN'])
-                                break
-
-                            pkg_ctx['error'] = e
-                            failed_pkgs_ctx.append(pkg_ctx)
-                            succeeded_pkgs_ctx.remove(pkg_ctx)
-                            tim.prepare_branch(succeeded_pkgs_ctx)
-                        except Exception as e:
-                            E(" core-image-minimal/ptest on machine %s failed" % machine)
-                            if isinstance(e, Error):
-                                E(" %s" % e.stdout)
-                            else:
-                                import traceback
-                                traceback.print_exc(file=sys.stdout)
-
-                            break
-
-                    image = settings.get('testimage_name', DEFAULT_TESTIMAGE)
-                    while True:
-                        try:
-                            tim.testimage(succeeded_pkgs_ctx, machine, image)
-                            break
-                        except IntegrationError as e:
-                            E("    %s on machine %s failed in integration, removing..." 
-                                % (pkg_ctx['PN'], machine))
-
-                            with open(os.path.join(pkg_ctx['workdir'],
-                                'integration_error.log'), 'a+') as f:
-                                f.write(e.stdout)
-
-                            if not pkg_ctx in succeeded_pkgs_ctx:
-                                E( "Infinite loop IntegrationError trying to " \
-                                   "remove %s twice, see logs.", pkg_ctx['PN'])
-                                break
-
-                            pkg_ctx['error'] = e
-                            failed_pkgs_ctx.append(pkg_ctx)
-                            succeeded_pkgs_ctx.remove(pkg_ctx)
-                            tim.prepare_branch(succeeded_pkgs_ctx)
-                        except Exception as e:
-                            E(" %s/testimage on machine %s failed" % (image, machine))
-                            if isinstance(e, Error):
-                                E(" %s" % e.stdout)
-                            else:
-                                import traceback
-                                traceback.print_exc(file=sys.stdout)
-                            break
-            else:
-                I(" Testimage was enabled but any upgrade was successful.")
+            ctxs = {}
+            ctxs['succeeded'] = succeeded_pkgs_ctx
+            ctxs['failed'] = failed_pkgs_ctx
+            image = settings.get('testimage_name', DEFAULT_TESTIMAGE)
+            tim = TestImage(self.bb, self.git, self.uh_work_dir, self.opts,
+                   ctxs, image)
+
+            tim.run()
 
         for pn in pkgs_ctx.keys():
             pkg_ctx = pkgs_ctx[pn]
-- 
2.1.4


