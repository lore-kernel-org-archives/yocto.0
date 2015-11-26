Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61AACE00AC5; Wed, 25 Nov 2015 16:00:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FABDE009C3
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:04 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188899"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:03 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:32 -0600
Message-Id: <1448496046-13186-4-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 03/17] upgradehelper.py: Adds own module for steps
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Isolate steps into own module in order to provide better
structure of the code.

In order to do that the step interfaces was defined to,
step(bb, git, opts, pkg_ctx)

	- bb: Bitbake helper instance.
	- git: Git helper instance.
	- opts: Upgrade helper options.
	- pkg_ctx: Package context per upgrade, it stores
	all information related to one upgrade.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 steps.py         | 142 ++++++++++++++++++++++++++++++
 upgradehelper.py | 259 +++++++++++++++++--------------------------------------
 2 files changed, 221 insertions(+), 180 deletions(-)
 create mode 100644 steps.py

diff --git a/steps.py b/steps.py
new file mode 100644
index 0000000..ea314da
--- /dev/null
+++ b/steps.py
@@ -0,0 +1,142 @@
+#!/usr/bin/env python
+# vim: set ts=4 sw=4 et:
+#
+# Copyright (c) 2013 - 2015 Intel Corporation
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
+
+import os
+import sys
+
+from logging import debug as D
+from logging import info as I
+from logging import warning as W
+from logging import error as E
+from logging import critical as C
+
+from errors import *
+from buildhistory import BuildHistory
+from recipe import Recipe
+from gitrecipe import GitRecipe
+from svnrecipe import SvnRecipe
+
+def load_env(bb, git, opts, pkg_ctx):
+    stdout = git.status()
+    if stdout != "":
+        if opts['interactive']:
+            W(" %s: git repository has uncommited work which will be dropped!" \
+                    " Proceed? (y/N)" % pkg_ctx['PN'])
+            answer = sys.stdin.readline().strip().upper()
+            if answer == '' or answer != 'Y':
+                I(" %s: User abort!" % pkg_ctx['PN'])
+                exit(1)
+
+        I(" %s: Dropping uncommited work!" % pkg_ctx['PN'])
+        git.reset_hard()
+        git.clean_untracked()
+
+    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
+    if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
+        raise UpgradeNotNeededError
+
+def load_dirs(bb, git, opts, pkg_ctx):
+    pkg_ctx['workdir'] = os.path.join(pkg_ctx['base_dir'], pkg_ctx['PN'])
+    os.mkdir(pkg_ctx['workdir'])
+
+    pkg_ctx['recipe_dir'] = os.path.dirname(pkg_ctx['env']['FILE'])
+
+def clean_repo(bb, git, opts, pkg_ctx):
+    try:
+        git.checkout_branch("upgrades")
+    except Error:
+        git.create_branch("upgrades")
+
+    try:
+        git.delete_branch("remove_patches")
+    except:
+        pass
+
+def detect_recipe_type(bb, git, opts, pkg_ctx):
+    if pkg_ctx['env']['SRC_URI'].find("ftp://") != -1 or  \
+            pkg_ctx['env']['SRC_URI'].find("http://") != -1 or \
+            pkg_ctx['env']['SRC_URI'].find("https://") != -1:
+        recipe = Recipe
+    elif pkg_ctx['env']['SRC_URI'].find("git://") != -1:
+        recipe = GitRecipe
+    else:
+        raise UnsupportedProtocolError
+
+    pkg_ctx['recipe'] = recipe(pkg_ctx['env'], pkg_ctx['NPV'],
+            opts['interactive'], pkg_ctx['workdir'],
+            pkg_ctx['recipe_dir'], bb, git)
+
+def buildhistory_init(bb, git, opts, pkg_ctx):
+    if not opts['buildhistory_enabled']:
+        return
+
+    pkg_ctx['buildhistory'] = BuildHistory(bb, pkg_ctx['PN'],
+            pkg_ctx['workdir'])
+    I(" %s: Initial buildhistory for %s ..." % (pkg_ctx['PN'],
+            opts['machines']))
+    pkg_ctx['buildhistory'].init(opts['machines'])
+
+def unpack_original(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].unpack()
+
+def rename(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].rename()
+
+    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
+
+    pkg_ctx['recipe'].update_env(pkg_ctx['env'])
+
+def cleanall(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].cleanall()
+
+def fetch(bb, git, opts, pkg_ctx):
+    pkg_ctx['recipe'].fetch()
+
+def compile(bb, git, opts, pkg_ctx):
+    if opts['skip_compilation']:
+        W(" %s: Compilation was skipped by user choice!")
+        return
+
+    for machine in opts['machines']:
+        I(" %s: compiling for %s ..." % (pkg_ctx['PN'], machine))
+        pkg_ctx['recipe'].compile(machine)
+        if opts['buildhistory_enabled']:
+            pkg_ctx['buildhistory'].add()
+
+def buildhistory_diff(bb, git, opts, pkg_ctx):
+    if not opts['buildhistory_enabled']:
+        return
+
+    I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
+    pkg_ctx['buildhistory'].diff()
+
+upgrade_steps = [
+    (load_env, "Loading environment ..."),
+    (load_dirs, None),
+    (clean_repo, "Cleaning git repository of temporary branch ..."),
+    (detect_recipe_type, None),
+    (buildhistory_init, None),
+    (unpack_original, "Fetch & unpack original version ..."),
+    (rename, "Renaming recipes, reset PR (if exists) ..."),
+    (cleanall, "Clean all ..."),
+    (fetch, "Fetch new version (old checksums) ..."),
+    (compile, None),
+    (buildhistory_diff, None)
+]
diff --git a/upgradehelper.py b/upgradehelper.py
index 1c3dcbc..22365b7 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -29,12 +29,14 @@
 import argparse
 import os
 import subprocess
+
 import logging as log
 from logging import debug as D
 from logging import info as I
 from logging import warning as W
 from logging import error as E
 from logging import critical as C
+
 import re
 import signal
 import sys
@@ -43,14 +45,14 @@ from datetime import datetime
 from datetime import date
 import shutil
 from errors import *
+
 from git import Git
 from bitbake import Bitbake
-from buildhistory import BuildHistory
+
 from emailhandler import Email
 from statistics import Statistics
-from recipe import Recipe
-from gitrecipe import GitRecipe
-from svnrecipe import SvnRecipe
+
+from steps import upgrade_steps
 
 help_text = """Usage examples:
 * To upgrade xmodmap recipe to the latest available version, interactively:
@@ -140,7 +142,8 @@ class Updater(object):
 
         self.email_handler = Email(settings)
         self.statistics = Statistics()
-        self.git = None
+        # XXX: assume that the poky directory is the first entry in the PATH
+        self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
 
         self.opts = {}
         self.opts['interactive'] = not auto_mode
@@ -165,21 +168,6 @@ class Updater(object):
         self.uh_recipes_failed_dir = os.path.join(self.uh_work_dir, "failed")
         os.mkdir(self.uh_recipes_failed_dir)
 
-        self.upgrade_steps = [
-            (self._load_env, "Loading environment ..."),
-            (self._create_workdir, None),
-            (self._detect_repo, "Detecting git repository location ..."),
-            (self._clean_repo, "Cleaning git repository of temporary branch ..."),
-            (self._detect_recipe_type, None),
-            (self._buildhistory_init, None),
-            (self._unpack_original, "Fetch & unpack original version ..."),
-            (self._rename, "Renaming recipes, reset PR (if exists) ..."),
-            (self._cleanall, "Clean all ..."),
-            (self._fetch, "Fetch new version (old checksums) ..."),
-            (self._compile, None),
-            (self._buildhistory_diff, None)
-        ]
-
     def _get_status_msg(self, err):
         if err:
             return str(err)
@@ -208,105 +196,6 @@ class Updater(object):
 
         return enabled
 
-    def _load_env(self):
-        self.env = self.bb.env(self.pn)
-
-    def _create_workdir(self):
-        self.workdir = os.path.join(self.uh_recipes_all_dir, self.pn)
-        os.mkdir(self.workdir)
-
-    def _detect_repo(self):
-        self.recipe_dir = os.path.dirname(self.env['FILE'])
-
-        if self.env['PV'] == self.new_ver:
-            raise UpgradeNotNeededError
-
-        # UniverseUpdater use git poky respository 
-        if isinstance(self.git, UniverseUpdater):
-            return
-
-        self.git = Git(self.recipe_dir)
-
-        stdout = self.git.status()
-        if stdout != "":
-            if self.opts['interactive']:
-                W(" %s: git repository has uncommited work which will be dropped! Proceed? (y/N)" % self.pn)
-                answer = sys.stdin.readline().strip().upper()
-                if answer == '' or answer != 'Y':
-                    I(" %s: User abort!" % self.pn)
-                    exit(0)
-
-            W(" %s: Dropping uncommited work!" % self.pn)
-            self.git.reset_hard()
-            self.git.clean_untracked()
-
-            self.env = self.bb.env(self.pn)
-
-    def _clean_repo(self):
-        try:
-            self.git.checkout_branch("upgrades")
-        except Error:
-            self.git.create_branch("upgrades")
-        try:
-            self.git.delete_branch("remove_patches")
-        except:
-            pass
-
-    def _detect_recipe_type(self):
-        if self.env['SRC_URI'].find("ftp://") != -1 or  \
-                self.env['SRC_URI'].find("http://") != -1 or \
-                self.env['SRC_URI'].find("https://") != -1:
-            recipe = Recipe
-        elif self.env['SRC_URI'].find("git://") != -1:
-            recipe = GitRecipe
-        else:
-            raise UnsupportedProtocolError
-
-        self.recipe = recipe(self.env, self.new_ver, self.opts['interactive'], self.workdir,
-                             self.recipe_dir, self.bb, self.git)
-
-    def _buildhistory_init(self):
-        if not self.opts['buildhistory_enabled']:
-            return
-
-        self.buildhistory = BuildHistory(self.bb, self.pn, self.workdir)
-        I(" %s: Initial buildhistory for %s ..." % (self.pn, self.opts['machines']))
-        self.buildhistory.init(self.opts['machines'])
-
-    def _unpack_original(self):
-        self.recipe.unpack()
-
-    def _rename(self):
-        self.recipe.rename()
-
-        self.env = self.bb.env(self.pn)
-
-        self.recipe.update_env(self.env)
-
-    def _cleanall(self):
-        self.recipe.cleanall()
-
-    def _fetch(self):
-        self.recipe.fetch()
-
-    def _compile(self):
-        if self.opts['skip_compilation']:
-            W(" %s: Compilation was skipped by user choice!")
-            return
-
-        for machine in self.opts['machines']:
-            I(" %s: compiling for %s ..." % (self.pn, machine))
-            self.recipe.compile(machine)
-            if self.opts['buildhistory_enabled']:
-                self.buildhistory.add()
-
-    def _buildhistory_diff(self):
-        if not self.opts['buildhistory_enabled']:
-            return
-
-        I(" %s: Checking buildhistory ..." % self.pn)
-        self.buildhistory.diff()
-
     def _get_packages_to_upgrade(self, packages=None):
         if packages is None:
             I( "Nothing to upgrade")
@@ -315,14 +204,14 @@ class Updater(object):
             return packages
 
     # this function will be called at the end of each recipe upgrade
-    def pkg_upgrade_handler(self, err):
-        if err and self.patch_file and self.opts['interactive']:
+    def pkg_upgrade_handler(self, pkg_ctx):
+        if self.opts['interactive'] and pkg_ctx['error'] and pkg_ctx['patch_file']:
             answer = "N"
-            I(" %s: Do you want to keep the changes? (y/N)" % self.pn)
+            I(" %s: Do you want to keep the changes? (y/N)" % pkg_ctx['PN'])
             answer = sys.stdin.readline().strip().upper()
 
             if answer == '' or answer == 'N':
-                I(" %s: Dropping changes from git ..." % self.pn)
+                I(" %s: Dropping changes from git ..." % pkg_ctx['PN'])
                 self.git.reset_hard(1)
                 self.git.clean_untracked()
                 return
@@ -331,8 +220,8 @@ class Updater(object):
         # problems and other recipes depend on it. Give the other recipes a
         # chance...
         if (settings.get("drop_previous_commits", "no") == "yes" and
-                not err) or (err and self.patch_file):
-            I(" %s: Dropping changes from git ..." % self.pn)
+                not pkg_ctx['error']) or (pkg_ctx['error'] and pkg_ctx['patch_file']):
+            I(" %s: Dropping changes from git ..." % pkg_ctx['PN'])
             self.git.reset_hard(1)
             self.git.clean_untracked()
 
@@ -361,44 +250,44 @@ class Updater(object):
             "Any problem please contact Anibal Limon <anibal.limon@intel.com>.\n\n" \
             "Regards,\nThe Upgrade Helper"
 
-        if self.maintainer in maintainer_override:
-            to_addr = maintainer_override[self.maintainer]
+        if pkg_ctx['MAINTAINER'] in maintainer_override:
+            to_addr = maintainer_override[pkg_ctx['MAINTAINER']]
         else:
-            to_addr = self.maintainer
+            to_addr = pkg_ctx['MAINTAINER']
 
         cc_addr = None
         if "status_recipients" in settings:
             cc_addr = settings["status_recipients"].split()
 
-        subject = "[AUH] " + self.pn + ": upgrading to " + self.new_ver
-        if not err:
+        subject = "[AUH] " + pkg_ctx['PN'] + ": upgrading to " + pkg_ctx['NPV']
+        if not pkg_ctx['error']:
             subject += " SUCCEEDED"
         else:
             subject += " FAILED"
-        msg_body = mail_header % (self.pn, self.new_ver,
-                self._get_status_msg(err))
-        license_diff_fn = self.recipe.get_license_diff_file_name()
+        msg_body = mail_header % (pkg_ctx['PN'], pkg_ctx['NPV'],
+                self._get_status_msg(pkg_ctx['error']))
+        license_diff_fn = pkg_ctx['recipe'].get_license_diff_file_name()
         if license_diff_fn:
             msg_body += license_change_info % license_diff_fn
-        if not err:
+        if not pkg_ctx['error']:
             msg_body += next_steps_info % (', '.join(self.opts['machines']),
-                    os.path.basename(self.patch_file))
+                    os.path.basename(pkg_ctx['patch_file']))
 
         msg_body += mail_footer
 
         # Add possible attachments to email
         attachments = []
-        for attachment in os.listdir(self.workdir):
-            attachment_fullpath = os.path.join(self.workdir, attachment)
+        for attachment in os.listdir(pkg_ctx['workdir']):
+            attachment_fullpath = os.path.join(pkg_ctx['workdir'], attachment)
             if os.path.isfile(attachment_fullpath):
                 attachments.append(attachment_fullpath)
 
         # Only send email to Maintainer when recipe upgrade succeed.
-        if self.opts['send_email'] and not err:
+        if self.opts['send_email'] and not pkg_ctx['error']:
             self.email_handler.send_email(to_addr, subject, msg_body, attachments, cc_addr=cc_addr)
 
         # Preserve email for review purposes.
-        email_file = os.path.join(self.workdir,
+        email_file = os.path.join(pkg_ctx['workdir'],
                     "email_summary")
         with open(email_file, "w+") as f:
             f.write("To: %s\n" % to_addr)
@@ -411,22 +300,26 @@ class Updater(object):
             f.write("Attachments: %s\n" % ' '.join(attachments))
             f.write("\n%s\n" % msg_body)
 
-    def _commit_changes(self):
+    def commit_changes(self, pkg_ctx):
         try:
-            self.patch_file = None
-            if self.recipe is not None:
-                I(" %s: Auto commit changes ..." % self.pn)
-                self.git.commit(self.recipe.commit_msg, self.opts['author'])
-                I(" %s: Save patch in %s." % (self.pn, self.workdir))
-                stdout = self.git.create_patch(self.workdir)
-                self.patch_file = stdout.strip()
+            pkg_ctx['patch_file'] = None
+
+            if pkg_ctx['recipe']:
+                I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
+                self.git.commit(pkg_ctx['recipe'].commit_msg, self.opts['author'])
+
+                I(" %s: Save patch in directory: %s." %
+                        (pkg_ctx['PN'], pkg_ctx['workdir']))
+
+                stdout = self.git.create_patch(pkg_ctx['workdir'])
+                pkg_ctx['patch_file'] = stdout.strip()
         except Error as e:
             for line in e.stdout.split("\n"):
                 if line.find("nothing to commit") == 0:
-                    I(" %s: Nothing to commit!" % self.pn)
+                    I(" %s: Nothing to commit!" % pkg_ctx['PN'])
                     return
 
-            I(" %s: %s" % (self.pn, e.stdout))
+            I(" %s: %s" % (pkg_ctx['PN'], e.stdout))
             raise e
 
     def send_status_mail(self):
@@ -445,7 +338,6 @@ class Updater(object):
         else:
             W("No recipes attempted, not sending status mail!")
 
-
     def _order_pkgs_to_upgrade(self, pkgs_to_upgrade):
         def _get_pn_dep_dic(pn_list, dependency_file): 
             import re
@@ -534,33 +426,43 @@ class Updater(object):
                 self._get_packages_to_upgrade(package_list))
         total_pkgs = len(pkgs_to_upgrade)
 
+        pkgs_ctx = {}
+
         I(" ########### The list of recipes to be upgraded #############")
         for p, v, m in pkgs_to_upgrade:
             I(" %s, %s, %s" % (p, v, m))
+
+            pkgs_ctx[p] = {}
+            pkgs_ctx[p]['PN'] = p
+            pkgs_ctx[p]['NPV'] = v
+            pkgs_ctx[p]['MAINTAINER'] = m
+
+            pkgs_ctx[p]['base_dir'] = self.uh_recipes_all_dir
         I(" ############################################################")
 
         attempted_pkgs = 0
-        for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrade:
-            error = None
-            self.recipe = None
+        for pn, _, _ in pkgs_to_upgrade:
+            pkg_ctx = pkgs_ctx[pn]
+            pkg_ctx['error'] = None
+
             attempted_pkgs += 1
             I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs))
             try:
-                I(" %s: Upgrading to %s" % (self.pn, self.new_ver))
-                for step, msg in self.upgrade_steps:
+                I(" %s: Upgrading to %s" % (pkg_ctx['PN'], pkg_ctx['NPV']))
+                for step, msg in upgrade_steps:
                     if msg is not None:
-                        I(" %s: %s" % (self.pn, msg))
-                    step()
+                        I(" %s: %s" % (pkg_ctx['PN'], msg))
+                    step(self.bb, self.git, self.opts, pkg_ctx)
 
-                os.symlink(self.workdir, os.path.join( \
-                    self.uh_recipes_succeed_dir, self.pn))
+                os.symlink(pkg_ctx['workdir'], os.path.join( \
+                    self.uh_recipes_succeed_dir, pkg_ctx['PN']))
 
-                I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)
+                I(" %s: Upgrade SUCCESSFUL! Please test!" % pkg_ctx['PN'])
             except Exception as e:
                 if isinstance(e, UpgradeNotNeededError):
-                    I(" %s: %s" % (self.pn, e.message))
+                    I(" %s: %s" % (pkg_ctx['PN'], e.message))
                 elif isinstance(e, UnsupportedProtocolError):
-                    I(" %s: %s" % (self.pn, e.message))
+                    I(" %s: %s" % (pkg_ctx['PN'], e.message))
                 else:
                     if not isinstance(e, Error):
                         import traceback
@@ -568,24 +470,25 @@ class Updater(object):
                         e = Error(message=msg)
                         error = e
 
-                    E(" %s: %s" % (self.pn, e.message))
+                    E(" %s: %s" % (pkg_ctx['PN'], e.message))
 
-                    if os.listdir(self.workdir):
+                    if os.listdir(pkg_ctx['workdir']):
                         E(" %s: Upgrade FAILED! Logs and/or file diffs are available in %s"
-                            % (self.pn, self.workdir))
+                            % (pkg_ctx['PN'], pkg_ctx['workdir']))
 
-                error = e
+                pkg_ctx['error'] = e
 
-                os.symlink(self.workdir, os.path.join( \
-                    self.uh_recipes_failed_dir, self.pn))
+                os.symlink(pkg_ctx['workdir'], os.path.join( \
+                    self.uh_recipes_failed_dir, pkg_ctx['PN']))
 
-            self._commit_changes()
+            self.commit_changes(pkg_ctx)
 
-            self.pkg_upgrade_handler(error)
+            self.statistics.update(pkg_ctx['PN'], pkg_ctx['NPV'],
+                    pkg_ctx['MAINTAINER'], pkg_ctx['error'])
 
-            self.statistics.update(self.pn, self.new_ver, self.maintainer, error)
+            self.pkg_upgrade_handler(pkg_ctx)
 
-        if (attempted_pkgs > 1):
+        if attempted_pkgs > 1:
             statistics_summary = self.statistics.pkg_stats() + \
                     self.statistics.maintainer_stats()
 
@@ -603,9 +506,6 @@ class UniverseUpdater(Updater):
     def __init__(self):
         Updater.__init__(self, True, True)
 
-        # XXX: assume that the poky directory is the first entry in the PATH
-        self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
-
         # read history file
         self.history_file = os.path.join(get_build_dir(), "upgrade-helper", "history.uh")
         self.history = dict()
@@ -642,7 +542,6 @@ class UniverseUpdater(Updater):
             I(" Removing tmp directory ...")
             shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
 
-
     def _check_upstream_versions(self, packages=[("universe", None, None)]):
         I(" Fetching upstream version(s) ...")
 
@@ -789,10 +688,10 @@ class UniverseUpdater(Updater):
                            upgrade_status + "\n")
         os.rename(self.history_file + ".tmp", self.history_file)
 
-    def pkg_upgrade_handler(self, err):
-        super(UniverseUpdater, self).pkg_upgrade_handler(err)
-        self._update_history(self.pn, self.new_ver, self.maintainer,
-                self._get_status_msg(err))
+    def pkg_upgrade_handler(self, pkg_ctx):
+        super(UniverseUpdater, self).pkg_upgrade_handler(pkg_ctx)
+        self._update_history(pkg_ctx['PN'], pkg_ctx['NPV'], pkg_ctx['MAINTAINER'],
+                self._get_status_msg(pkg_ctx['error']))
 
     def run(self):
         self._update_master()
-- 
2.1.4


