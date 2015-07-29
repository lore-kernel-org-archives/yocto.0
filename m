Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 488B2E00AA6; Wed, 29 Jul 2015 13:51:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C12FE00A64
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 13:51:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2015 13:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,572,1432623600"; d="scan'208";a="757672294"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2015 13:51:00 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Jul 2015 15:50:53 -0500
Message-Id: <1438203053-7909-11-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438203053-7909-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 10/10][auh] upgradehelper: Add support for generate buildhistory recipe diff's
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
X-List-Received-Date: Wed, 29 Jul 2015 20:51:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now AUH generates buildhistory diff when recipe was upgraded
successfully.

For enable this feature set into local.conf.

	INHERIT += "buildhistory"
	BUILDHISTORY_COMMIT = "1"

Summary of the changes,

	- bitbake.py: Enable environment generation without recipe,
          removes Buildhistory class.
	- buildhistory.py: Add buildhistory class that generates initial
          buildhistory revision and keeps track of build revisions for
          generate diff when build is successful.
        - upgradehelper.py: Add buildhistory steps for upgrade, add
          support for detect when buildhistory is enabled loading the
          environment without recipe.

[YOCTO #7175]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 bitbake.py       |  41 ++------------------
 buildhistory.py  |  75 ++++++++++++++++++++++++++++++++++++
 errors.py        |   6 +++
 upgradehelper.py | 115 ++++++++++++++++++++++++++++++++++++++++---------------
 4 files changed, 170 insertions(+), 67 deletions(-)
 create mode 100644 buildhistory.py

diff --git a/bitbake.py b/bitbake.py
index e23dc28..a1587ce 100644
--- a/bitbake.py
+++ b/bitbake.py
@@ -44,7 +44,7 @@ class Bitbake(object):
         self.log_dir = None
         super(Bitbake, self).__init__()
 
-    def _cmd(self, recipe, options=None, env_var=None, output_filter=None):
+    def _cmd(self, recipe=None, options=None, env_var=None, output_filter=None):
         cmd = ""
         if env_var is not None:
             cmd += env_var + " "
@@ -52,7 +52,8 @@ class Bitbake(object):
         if options is not None:
             cmd += options + " "
 
-        cmd += recipe
+        if recipe is not None:
+            cmd += recipe
 
         if output_filter is not None:
             cmd += ' |  grep ' + output_filter
@@ -78,7 +79,7 @@ class Bitbake(object):
     def get_stdout_log(self):
         return os.path.join(self.log_dir, BITBAKE_ERROR_LOG)
 
-    def env(self, recipe):
+    def env(self, recipe=None):
         return self._cmd(recipe, "-e", output_filter="-v \"^#\"")
 
     def fetch(self, recipe):
@@ -104,37 +105,3 @@ class Bitbake(object):
 
     def dependency_graph(self, package_list):
         return self._cmd(package_list, "-g")
-
-class BuildHistory(object):
-    def __init__(self, build_dir):
-        self.build_dir = build_dir
-        self.work_dir = None
-
-    def set_work_dir(self, work_dir):
-        self.work_dir = work_dir
-
-    # Return True if buildhistory-diff gives output
-    def diff(self, revision_steps):
-        os.chdir(self.build_dir)
-        cmd = "buildhistory-diff HEAD~" + str(revision_steps)
-
-        try:
-            stdout, stderr = bb.process.run(cmd)
-            # Write diff output to log file if there is any
-
-            if stdout and os.path.exists(self.work_dir):
-                with open(os.path.join(self.work_dir, "buildhistory.txt"), "w+") as log:
-                    log.write(stdout)
-                return True
-        except bb.process.ExecutionError as e:
-            for line in e.stdout.split('\n'):
-                if line.find("Buildhistory directory \"buildhistory/\" does not exist") == 0:
-                    C(" \"buildhistory.bbclass\" not inherited. Consider adding "
-                      "the following to your local.conf:\n\n"
-                      "INHERIT =+ \"buildhistory\"\n"
-                      "BUILDHISTORY_COMMIT = \"1\"\n\n"
-                      "Do not remove any other inherited class in the process (e.g. distrodata)\n")
-                    exit(1)
-
-        return False
-
diff --git a/buildhistory.py b/buildhistory.py
new file mode 100644
index 0000000..1732f23
--- /dev/null
+++ b/buildhistory.py
@@ -0,0 +1,75 @@
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
+
+import os
+import logging as log
+from logging import info as I
+from logging import debug as D
+from logging import error as E
+from logging import critical as C
+import sys
+from errors import *
+
+from bitbake import *
+from git import Git
+
+os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
+                                    " BUILDHISTORY_DIR"
+
+class BuildHistory(object):
+    def __init__(self, bb, pn, workdir):
+        self.bb = bb
+        self.pn = pn
+        self.workdir = workdir
+        self.revs = []
+
+        self.buildhistory_dir = os.path.join(self.workdir, 'buildhistory')
+        if not os.path.exists(self.buildhistory_dir):
+            os.mkdir(self.buildhistory_dir)
+
+        self.git = Git(self.buildhistory_dir)
+
+        os.environ["BUILDHISTORY_DIR"] = self.buildhistory_dir
+
+    def init(self, machines):
+        self.bb.cleanall(self.pn)
+        for machine in machines:
+            self.bb.complete(self.pn, machine)
+            self.revs.append(self.git.last_commit("master"))
+
+    def add(self):
+        self.revs.append(self.git.last_commit("master"))
+
+    def diff(self):
+        rev_initial = self.revs[0]
+        rev_final = self.revs[-1]
+
+        cmd = "buildhistory-diff -a -p %s %s %s"  % (self.buildhistory_dir, 
+                rev_initial, rev_final)
+
+        try:
+            stdout, stderr = bb.process.run(cmd)
+
+            if stdout and os.path.exists(self.workdir):
+                with open(os.path.join(self.workdir, "buildhistory-diff.txt"),
+                        "w+") as log:
+                    log.write(stdout)
+        except bb.process.ExecutionError as e:
+            W( "%s: Buildhistory checking fails\n%s" % (self.pn, e.stdout))
diff --git a/errors.py b/errors.py
index 7194944..1504fa5 100644
--- a/errors.py
+++ b/errors.py
@@ -85,3 +85,9 @@ class UpgradeNotNeededError(Error):
     def __str__(self):
         return "Failed(up to date)"
 
+class EmptyEnvError(Error):
+    def __init__(self, stdout):
+        super(EmptyEnvError, self).__init__("Empty environment returned", stdout)
+
+    def __str__(self):
+        return "Failed(get_env)"
diff --git a/upgradehelper.py b/upgradehelper.py
index 4d8685c..a8bc5ec 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -44,6 +44,7 @@ import shutil
 from errors import *
 from git import Git
 from bitbake import Bitbake
+from buildhistory import BuildHistory
 from emailhandler import Email
 from statistics import Statistics
 from recipe import Recipe
@@ -145,23 +146,40 @@ class Updater(object):
         self.machines = settings.get('machines', 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
 
         self.upgrade_steps = [
+            (self._load_env, "Loading environment ..."),
             (self._create_workdir, None),
-            (self._get_env, "Loading environment ..."),
             (self._detect_repo, "Detecting git repository location ..."),
             (self._clean_repo, "Cleaning git repository of temporary branch ..."),
             (self._detect_recipe_type, None),
+            (self._buildhistory_init, None),
             (self._unpack_original, "Fetch & unpack original version ..."),
             (self._rename, "Renaming recipes, reset PR (if exists) ..."),
             (self._cleanall, "Clean all ..."),
             (self._fetch, "Fetch new version (old checksums) ..."),
-            (self._compile, None)
+            (self._compile, None),
+            (self._buildhistory_diff, None)
         ]
 
+        try:
+            self.base_env = self._get_env()
+        except EmptyEnvError as e:
+            import traceback
+            E( " %s\n%s" % (e.message, traceback.format_exc()))
+            E( " Bitbake output:\n%s" % (e.stdout))
+            exit(1)
+        self.buildhistory_enabled = self._buildhistory_is_enabled()
+
         self.email_handler = Email(settings)
         self.statistics = Statistics()
 
-    def _get_env(self):
-        stdout = self.bb.env(self.pn)
+    def _get_status_msg(self, err):
+        if err:
+            return str(err)
+        else:
+            return "Succeeded"
+
+    def _get_env(self, pn=None):
+        stdout = self.bb.env(pn)
 
         assignment = re.compile("^([^ \t=]*)=(.*)")
         bb_env = dict()
@@ -173,38 +191,46 @@ class Updater(object):
 
                 bb_env[m.group(1)] = m.group(2).strip("\"")
 
-        self.env = bb_env
-        self.recipe_dir = os.path.dirname(self.env['FILE'])
+        if not bb_env:
+            raise EmptyEnvError(stdout)
 
-    def _detect_recipe_type(self):
-        if self.env['SRC_URI'].find("ftp://") != -1 or  \
-                self.env['SRC_URI'].find("http://") != -1 or \
-                self.env['SRC_URI'].find("https://") != -1:
-            recipe = Recipe
-        elif self.env['SRC_URI'].find("git://") != -1:
-            recipe = GitRecipe
-        else:
-            raise UnsupportedProtocolError
+        return bb_env
 
-        self.recipe = recipe(self.env, self.new_ver, self.interactive, self.workdir,
-                             self.recipe_dir, self.bb, self.git)
+    def _buildhistory_is_enabled(self):
+        enabled = False
 
-    def _get_status_msg(self, err):
-        if err:
-            return str(err)
-        else:
-            return "Succeeded"
+        if 'buildhistory' in self.base_env['INHERIT']:
+            if not 'BUILDHISTORY_COMMIT' in self.base_env:
+                E(" Buildhistory was enabled but need"\
+                        " BUILDHISTORY_COMMIT=1 please set.")
+                exit(1)
+
+            if not self.base_env['BUILDHISTORY_COMMIT'] == '1':
+                E(" Buildhistory was enabled but need"\
+                        " BUILDHISTORY_COMMIT=1 please set.")
+                exit(1)
+
+            if self.skip_compilation:
+                W(" Buildhistory disabled because user" \
+                        " skip compilation!")
+            else:
+                enabled = True
+
+        return enabled
+
+    def _load_env(self):
+        self.env = self._get_env(self.pn)
 
     def _create_workdir(self):
         self.workdir = os.path.join(self.uh_work_dir, self.pn)
 
-        if not os.path.exists(self.workdir):
-            os.mkdir(self.workdir)
-        else:
-            for f in os.listdir(self.workdir):
-                os.remove(os.path.join(self.workdir, f))
+        if os.path.exists(self.workdir):
+            shutil.rmtree(self.workdir)
+        os.mkdir(self.workdir)
 
     def _detect_repo(self):
+        self.recipe_dir = os.path.dirname(self.env['FILE'])
+
         if self.env['PKGV'] == self.new_ver:
             raise UpgradeNotNeededError
 
@@ -227,7 +253,7 @@ class Updater(object):
             self.git.reset_hard()
             self.git.clean_untracked()
 
-            self._get_env()
+            self.env = self._get_env(self.pn)
 
     def _clean_repo(self):
         try:
@@ -239,14 +265,34 @@ class Updater(object):
         except:
             pass
 
+    def _detect_recipe_type(self):
+        if self.env['SRC_URI'].find("ftp://") != -1 or  \
+                self.env['SRC_URI'].find("http://") != -1 or \
+                self.env['SRC_URI'].find("https://") != -1:
+            recipe = Recipe
+        elif self.env['SRC_URI'].find("git://") != -1:
+            recipe = GitRecipe
+        else:
+            raise UnsupportedProtocolError
+
+        self.recipe = recipe(self.env, self.new_ver, self.interactive, self.workdir,
+                             self.recipe_dir, self.bb, self.git)
+
+    def _buildhistory_init(self):
+        if self.buildhistory_enabled == False:
+            return
+
+        self.buildhistory = BuildHistory(self.bb, self.pn, self.workdir)
+        I(" %s: Initial buildhistory for %s ..." % (self.pn, self.machines))
+        self.buildhistory.init(self.machines)
+
     def _unpack_original(self):
         self.recipe.unpack()
 
     def _rename(self):
         self.recipe.rename()
 
-        # fetch new environment
-        self._get_env()
+        self.env = self._get_env(self.pn)
 
         self.recipe.update_env(self.env)
 
@@ -264,6 +310,15 @@ class Updater(object):
         for machine in self.machines:
             I(" %s: compiling for %s ..." % (self.pn, machine))
             self.recipe.compile(machine)
+            if self.buildhistory is not None:
+                self.buildhistory.add()
+
+    def _buildhistory_diff(self):
+        if self.buildhistory_enabled == False:
+            return
+
+        I(" %s: Checking buildhistory ..." % self.pn)
+        self.buildhistory.diff()
 
     def _get_packages_to_upgrade(self, packages=None):
         if packages is None:
-- 
1.9.1


