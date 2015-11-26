Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D909E00B5D; Wed, 25 Nov 2015 16:00:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0211E00A73
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:14 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847189047"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:12 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:42 -0600
Message-Id: <1448496046-13186-14-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 13/17] upgradehelper: Add testimage feature.
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Testimage module implements usage of testimage class, a integration
branch is created with succesful recipe upgrades and then the next
tests are run for every machine configured,

    - ptest: Recipes that support ptest are run and retrive
             the result after upgrade.
    - sato: Runs core-image-sato -c testimage.

The results are stored into recipe work directory and send to the
maintainer.

[YOCTO #7471]
[YOCTO #7567]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/testimage.py | 185 +++++++++++++++++++++++++++++++++++++++++++++++++++
 upgradehelper.py     |  82 +++++++++++++++++++++--
 2 files changed, 261 insertions(+), 6 deletions(-)
 create mode 100644 modules/testimage.py

diff --git a/modules/testimage.py b/modules/testimage.py
new file mode 100644
index 0000000..3fbbc19
--- /dev/null
+++ b/modules/testimage.py
@@ -0,0 +1,185 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2015 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; either version 2
+# of the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
+#
+# This module implements logic for run image tests on recipes when upgrade
+# process succeed.
+#
+
+import os
+import sys
+import shutil
+
+import logging as log
+from logging import debug as D
+from logging import info as I
+from logging import warning as W
+from logging import error as E
+from logging import critical as C
+
+from errors import *
+from utils.bitbake import *
+
+class TestImage():
+    def __init__(self, bb, git, uh_work_dir, pkgs_ctx):
+        self.bb = bb
+        self.git = git
+        self.uh_work_dir = uh_work_dir
+        self.pkgs_ctx = pkgs_ctx
+
+        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
+            " TEST_SUITES CORE_IMAGE_EXTRA_INSTALL"
+
+    def _get_ptest_pkgs(self):
+        pkgs = []
+
+        for c in self.pkgs_ctx:
+            if "ptest" in c['recipe'].get_inherits():
+                pkgs.append(c)
+
+        return pkgs
+
+    def _get_pkgs_to_install(self, pkgs, ptest=False):
+        pkgs_out = []
+
+        # for provide access to the target
+        if ptest:
+            pkgs_out.append("dropbear")
+
+        for c in pkgs:
+            pkgs_out.append(c['PN'])
+            if ptest:
+                pkgs_out.append("%s-ptest" % c['PN'])
+
+        return ' '.join(pkgs_out)
+
+    def prepare_branch(self):
+        self.git.checkout_branch("master")
+        try:
+            self.git.delete_branch("testimage")
+            self.git.delete_branch("upgrades")
+        except Error:
+            pass
+        self.git.reset_hard()
+
+        self.git.create_branch("testimage")
+        for c in self.pkgs_ctx:
+            patch_file = os.path.join(c['workdir'], c['patch_file'])
+            self.git.apply_patch(patch_file)
+
+    def _parse_ptest_log(self, log_file):
+        ptest_results = {}
+
+        with open(log_file, "r") as f:
+            pn = None
+            processing = False
+
+            for line in f:
+                if not processing:
+                    m = re.search("^BEGIN: /usr/lib/(.*)/ptest$", line)
+                    if m:
+                        pn = m.group(1)
+                        ptest_results[pn] = []
+                        processing = True
+                else:
+                    m = re.search("^END: $", line)
+                    if m:
+                        pn = None
+                        processing = False
+                    else:
+                        ptest_results[pn].append(line)
+
+        return ptest_results
+
+    def _find_log(self, name, machine):
+        result = []
+
+        base_dir = os.path.join(os.getenv('BUILDDIR'), 'tmp', 'work')
+        for root, dirs, files in os.walk(base_dir):
+            if name in files:
+                result.append(os.path.join(root, name))
+
+        for ptest_log in result:
+            if machine in ptest_log:
+                return ptest_log
+
+    def ptest(self, machine):
+        ptest_pkgs = self._get_ptest_pkgs()
+
+        os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
+            self._get_pkgs_to_install(ptest_pkgs, True)
+        I( "   building core-image-minimal for %s ..." % machine)
+        self.bb.complete("core-image-minimal", machine)
+
+        os.environ['TEST_SUITES'] = "ping ssh _ptest"
+        I( "   running core-image-minimal/ptest for %s ..." % machine)
+        self.bb.complete("core-image-minimal -c testimage", machine)
+
+        ptest_log_file = self._find_log("ptest.log", machine)
+        shutil.copyfile(ptest_log_file,
+                os.path.join(self.uh_work_dir, "ptest_%s.log" % machine))
+
+        ptest_result = self._parse_ptest_log(ptest_log_file)
+        for pn in ptest_result:
+            for pkg_ctx in self.pkgs_ctx:
+                if not pn == pkg_ctx['PN']:
+                    continue 
+
+                if not 'ptest' in pkg_ctx:
+                    pkg_ctx['ptest'] = {}
+                if not 'ptest_log' in pkg_ctx:
+                    pkg_ctx['ptest_log'] = os.path.join(pkg_ctx['workdir'],
+                        "ptest.log")
+
+                pkg_ctx['ptest'][machine] = True
+                with open(pkg_ctx['ptest_log'], "a+") as f:
+                    f.write("BEGIN: PTEST for %s\n" % machine)
+                    for line in ptest_result[pn]:
+                        f.write(line)
+                    f.write("END: PTEST for %s\n" % machine)
+
+    def sato(self, machine):
+        os.environ['CORE_IMAGE_EXTRA_INSTALL'] = \
+            self._get_pkgs_to_install(self.pkgs_ctx)
+
+        if 'TEST_SUITES' in os.environ:
+            del os.environ['TEST_SUITES']
+
+        I( "   building core-image-sato for %s ..." % machine)
+        self.bb.complete("core-image-sato", machine)
+
+        I( "   running core-image-sato/testimage for %s ..." % machine)
+        self.bb.complete("core-image-sato -c testimage", machine)
+
+        log_file = self._find_log("log.do_testimage", machine)
+        shutil.copyfile(log_file,
+                os.path.join(self.uh_work_dir, "log_%s.do_testimage" % machine))
+        for pkg_ctx in self.pkgs_ctx:
+            if not 'testimage' in pkg_ctx:
+                pkg_ctx['testimage'] = {}
+            if not 'testimage_log' in pkg_ctx:
+                pkg_ctx['testimage_log'] = os.path.join(
+                    pkg_ctx['workdir'], "log.do_testimage")
+
+            pkg_ctx['testimage'][machine] = True
+            with open(log_file, "r") as lf:
+                with open(pkg_ctx['testimage_log'], "a+") as of:
+                    of.write("BEGIN: TESTIMAGE for %s\n" % machine)
+                    for line in lf:
+                        of.write(line)
+                    of.write("END: TESTIMAGE for %s\n" % machine)
diff --git a/upgradehelper.py b/upgradehelper.py
index 222909b..18db9eb 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -56,6 +56,7 @@ from utils.emailhandler import Email
 
 from statistics import Statistics
 from steps import upgrade_steps
+from testimage import TestImage
 
 help_text = """Usage examples:
 * To upgrade xmodmap recipe to the latest available version, interactively:
@@ -296,6 +297,14 @@ class Updater(object):
             "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
             "    - send it to the list\n\n" \
 
+        testimage_ptest_info = \
+            "The recipe has ptest enabled and has been tested with core-image-minimal/ptest \n" \
+            "with the next machines %s. Attached is the log file.\n\n"
+
+        testimage_sato_info = \
+            "The recipe has been tested using core-image-sato testimage and succeeded with \n" \
+            "the next machines %s. Attached is the log file.\n\n" \
+
         mail_footer = \
             "Attached are the patch, license diff (if change) and bitbake log.\n" \
             "Any problem please contact Anibal Limon <anibal.limon@intel.com>.\n\n" \
@@ -317,13 +326,22 @@ class Updater(object):
             subject += " FAILED"
         msg_body = mail_header % (pkg_ctx['PN'], pkg_ctx['NPV'],
                 self._get_status_msg(pkg_ctx['error']))
-        license_diff_fn = pkg_ctx['recipe'].get_license_diff_file_name()
-        if license_diff_fn:
-            msg_body += license_change_info % license_diff_fn
+        if 'recipe' in pkg_ctx:
+            license_diff_fn = pkg_ctx['recipe'].get_license_diff_file_name()
+            if license_diff_fn:
+                msg_body += license_change_info % license_diff_fn
         if not pkg_ctx['error']:
             msg_body += next_steps_info % (', '.join(self.opts['machines']),
                     os.path.basename(pkg_ctx['patch_file']))
 
+        if self.opts['testimage']:
+            if 'ptest' in pkg_ctx:
+                machines = pkg_ctx['ptest'].keys()
+                msg_body += testimage_ptest_info % machines
+            if 'testimage' in pkg_ctx:
+                machines = pkg_ctx['testimage'].keys()
+                msg_body += testimage_sato_info % machines
+
         msg_body += mail_footer
 
         # Add possible attachments to email
@@ -336,7 +354,6 @@ class Updater(object):
         # Only send email to Maintainer when recipe upgrade succeed.
         if self.opts['send_email'] and not pkg_ctx['error']:
             self.email_handler.send_email(to_addr, subject, msg_body, attachments, cc_addr=cc_addr)
-
         # Preserve email for review purposes.
         email_file = os.path.join(pkg_ctx['workdir'],
                     "email_summary")
@@ -355,7 +372,7 @@ class Updater(object):
         try:
             pkg_ctx['patch_file'] = None
 
-            if pkg_ctx['recipe']:
+            if 'recipe' in pkg_ctx:
                 I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
                 self.git.commit(pkg_ctx['recipe'].commit_msg, self.opts['author'])
 
@@ -471,7 +488,16 @@ class Updater(object):
         I(" Building gcc runtimes ...")
         for machine in self.opts['machines']:
             I("  building gcc runtime for %s" % machine)
-            self.bb.complete("gcc-runtime", machine)
+            try:
+                self.bb.complete("gcc-runtime", machine)
+            except Exception as e:
+                E(" Can't build gcc-runtime for %s." % machine)
+
+                if isinstance(e, Error):
+                    E(e.stdout)
+                else:
+                    import traceback
+                    traceback.print_exc(file=sys.stdout)
 
         pkgs_to_upgrade = self._order_pkgs_to_upgrade(
                 self._get_packages_to_upgrade(package_list))
@@ -491,6 +517,8 @@ class Updater(object):
             pkgs_ctx[p]['base_dir'] = self.uh_recipes_all_dir
         I(" ############################################################")
 
+        succeeded_pkgs_ctx = []
+        failed_pkgs_ctx = []
         attempted_pkgs = 0
         for pn, _, _ in pkgs_to_upgrade:
             pkg_ctx = pkgs_ctx[pn]
@@ -505,6 +533,7 @@ class Updater(object):
                         I(" %s: %s" % (pkg_ctx['PN'], msg))
                     step(self.bb, self.git, self.opts, pkg_ctx)
 
+                succeeded_pkgs_ctx.append(pkg_ctx)
                 os.symlink(pkg_ctx['workdir'], os.path.join( \
                     self.uh_recipes_succeed_dir, pkg_ctx['PN']))
 
@@ -529,12 +558,53 @@ class Updater(object):
 
                 pkg_ctx['error'] = e
 
+                failed_pkgs_ctx.append(pkg_ctx)
                 os.symlink(pkg_ctx['workdir'], os.path.join( \
                     self.uh_recipes_failed_dir, pkg_ctx['PN']))
 
             self.commit_changes(pkg_ctx)
             self.statistics.update(pkg_ctx['PN'], pkg_ctx['NPV'],
                     pkg_ctx['MAINTAINER'], pkg_ctx['error'])
+
+        if self.opts['testimage']:
+            if len(succeeded_pkgs_ctx) > 0:
+                tim = TestImage(self.bb, self.git, self.uh_work_dir, succeeded_pkgs_ctx)
+
+                try:
+                    tim.prepare_branch()
+                except Exception as e:
+                    E(" testimage: Failed to prepare branch.")
+                    if isinstance(e, Error):
+                        E(" %s" % e.stdout)
+                    exit(1)
+
+                I(" Images will test for %s." % ', '.join(self.opts['machines']))
+                for machine in self.opts['machines']:
+                    I("  Testing images for %s ..." % machine)
+                    try:
+                        tim.ptest(machine)
+                    except Exception as e:
+                        E(" core-image-minimal/ptest on machine %s failed" % machine)
+                        if isinstance(e, Error):
+                            E(" %s" % e.stdout)
+                        else:
+                            import traceback
+                            traceback.print_exc(file=sys.stdout)
+
+                    try:
+                        tim.sato(machine)
+                    except Exception as e:
+                        E(" core-image-sato/testimage on machine %s failed" % machine)
+                        if isinstance(e, Error):
+                            E(" %s" % e.stdout)
+                        else:
+                            import traceback
+                            traceback.print_exc(file=sys.stdout)
+            else:
+                I(" Testimage was enabled but any upgrade was successful.")
+
+        for pn in pkgs_ctx.keys():
+            pkg_ctx = pkgs_ctx[pn]
             self.pkg_upgrade_handler(pkg_ctx)
 
         if attempted_pkgs > 1:
-- 
2.1.4


