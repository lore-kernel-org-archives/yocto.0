Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4758E00D99; Thu, 14 Dec 2017 08:35:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B630E00D95
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 08:35:31 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Dec 2017 08:35:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,400,1508828400"; 
   d="scan'208";a="2726583"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 14 Dec 2017 08:35:30 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Dec 2017 18:35:46 +0200
Message-Id: <91c2e661003d4eca2716bab06703998a1803805f.1513269061.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
References: <cover.1513269061.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 06/20] Add devtool support for upgrading recipes
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
X-List-Received-Date: Thu, 14 Dec 2017 16:35:33 -0000

From: Alexander Kanavin <alex.kanavin@gmail.com>

devtool has a much better support for rebasing patches,
can be used interactively when things go wrong, and we
also need to avoid having two codebases for updating
recipes that broadly do the same thing.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/errors.py        |   7 +-
 modules/steps.py         | 191 ++++++++++++++++++++++-------------------------
 modules/utils/devtool.py |  41 ++++++++++
 upgradehelper.py         |  30 ++++----
 4 files changed, 151 insertions(+), 118 deletions(-)
 create mode 100644 modules/utils/devtool.py

diff --git a/modules/errors.py b/modules/errors.py
index ba87180..ad56215 100644
--- a/modules/errors.py
+++ b/modules/errors.py
@@ -33,8 +33,11 @@ class Error(Exception):
 
 class MaintainerError(Error):
     """ Class for group error that can be sent to Maintainer's """
-    def __init__(self, message=None, stdout=None, stderr=None):
-        super(MaintainerError, self).__init__(message, stdout, stderr)
+
+class DevtoolError(Error):
+    """ Class for devtool errors """
+    def __str__(self):
+        return "Failed (devtool error)"
 
 class FetchError(Error):
     def __init__(self):
diff --git a/modules/steps.py b/modules/steps.py
index 0c527a4..63f43c8 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -21,6 +21,8 @@
 import os
 import sys
 import subprocess
+import shutil
+import re
 
 from logging import debug as D
 from logging import info as I
@@ -31,40 +33,7 @@ from logging import critical as C
 from errors import *
 from buildhistory import BuildHistory
 
-from recipe.base import Recipe
-from recipe.git import GitRecipe
-from recipe.svn import SvnRecipe
-
-def clean_repo(bb, git, opts, pkg_ctx):
-    git.checkout_branch("master")
-
-    try:
-        git.delete_branch("remove_patches")
-    except:
-        pass
-    try:
-        git.delete_branch("upgrades")
-    except:
-        pass
-
-    git.reset_hard()
-    git.create_branch("upgrades")
-
-def load_env(bb, git, opts, pkg_ctx):
-    stdout = git.status()
-    if stdout != "":
-        if opts['interactive']:
-            W(" %s: git repository has uncommited work which will be dropped!" \
-                    " Proceed? (y/N)" % pkg_ctx['PN'])
-            answer = sys.stdin.readline().strip().upper()
-            if answer == '' or answer != 'Y':
-                I(" %s: User abort!" % pkg_ctx['PN'])
-                exit(1)
-
-        I(" %s: Dropping uncommited work!" % pkg_ctx['PN'])
-        git.reset_hard()
-        git.clean_untracked()
-
+def load_env(devtool, bb, git, opts, pkg_ctx):
     pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
     pkg_ctx['workdir'] = os.path.join(pkg_ctx['base_dir'], pkg_ctx['PN'])
     os.mkdir(pkg_ctx['workdir'])
@@ -73,97 +42,117 @@ def load_env(bb, git, opts, pkg_ctx):
     if pkg_ctx['env']['PV'] == pkg_ctx['NPV']:
         raise UpgradeNotNeededError
 
-def detect_recipe_type(bb, git, opts, pkg_ctx):
-    if pkg_ctx['env']['SRC_URI'].find("ftp://") != -1 or  \
-            pkg_ctx['env']['SRC_URI'].find("http://") != -1 or \
-            pkg_ctx['env']['SRC_URI'].find("https://") != -1:
-        recipe = Recipe
-    elif pkg_ctx['env']['SRC_URI'].find("git://") != -1:
-        recipe = GitRecipe
-    else:
-        raise UnsupportedProtocolError
-
-    pkg_ctx['recipe'] = recipe(pkg_ctx['env'], pkg_ctx['NPV'],
-            opts['interactive'], pkg_ctx['workdir'],
-            pkg_ctx['recipe_dir'], bb, git)
-
-def buildhistory_init(bb, git, opts, pkg_ctx):
+def buildhistory_init(devtool, bb, git, opts, pkg_ctx):
     if not opts['buildhistory']:
         return
 
     pkg_ctx['buildhistory'] = BuildHistory(bb, pkg_ctx['PN'],
             pkg_ctx['workdir'])
     I(" %s: Initial buildhistory for %s ..." % (pkg_ctx['PN'],
-            opts['machines']))
-    pkg_ctx['buildhistory'].init(opts['machines'])
-
-def unpack_original(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].unpack()
-
-def pack_original_workdir(bb, git, opts, pkg_ctx):
-    recipe_workdir = os.path.dirname(pkg_ctx['env']['S'])
-    pkg_ctx['recipe_workdir_tarball'] = os.path.join(pkg_ctx['workdir'],
-            'original_workdir.tar.gz')
-
-    try:
-        subprocess.call(["tar", "-chzf", pkg_ctx['recipe_workdir_tarball'],
-                         recipe_workdir], stdout=subprocess.PIPE,
-                         stderr=subprocess.PIPE)
-    except:
-        W(" %s, Can't compress original workdir, if license diff" \
-          " is needed will show full file." % pkg_ctx['PN'])
-
-def rename(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].rename()
-
-    pkg_ctx['env'] = bb.env(pkg_ctx['PN'])
-
-    pkg_ctx['recipe'].update_env(pkg_ctx['env'])
-
-def cleanall(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].cleanall()
-
-def fetch(bb, git, opts, pkg_ctx):
-    pkg_ctx['recipe'].fetch()
+            opts['machines'][:1]))
+    pkg_ctx['buildhistory'].init(opts['machines'][:1])
+
+def _extract_license_diff(devtool_output):
+    licenseinfo = []
+    for line in devtool_output.split('\n'):
+        if line.startswith("NOTE: New recipe is"):
+            recipepath = line.split()[4]
+            with open(recipepath, 'rb') as f:
+                lines = f.readlines()
+
+            extracting = False
+            with open(recipepath, 'wb') as f:
+                for line in lines:
+                     if line.startswith(b'# FIXME: the LIC_FILES_CHKSUM'):
+                         extracting = True
+                     elif extracting == True and not line.startswith(b'#') and len(line) > 1:
+                         extracting = False
+                     if extracting == True:
+                         licenseinfo.append(line[2:])
+                     else:
+                         f.write(line)
+    D(" License diff extracted: {}".format(b"".join(licenseinfo).decode('utf-8')))
+    return licenseinfo
+
+def devtool_upgrade(devtool, bb, git, opts, pkg_ctx):
+    if pkg_ctx['NPV'].endswith("new-commits-available"):
+        pkg_ctx['commit_msg'] = "{}: upgrade to latest revision".format(pkg_ctx['PN'])
+    else:
+        pkg_ctx['commit_msg'] = "{}: upgrade {} -> {}".format(pkg_ctx['PN'], pkg_ctx['PV'], pkg_ctx['NPV'])
 
-def unpack_original_workdir(bb, git, opts, pkg_ctx):
     try:
-        subprocess.call(["tar", "-xhzf", pkg_ctx['recipe_workdir_tarball'],
-                         "-C", "/"], stdout=subprocess.PIPE,
-                         stderr=subprocess.PIPE)
-        os.unlink(pkg_ctx['recipe_workdir_tarball'])
-    except:
-        pass
-
-def compile(bb, git, opts, pkg_ctx):
+        devtool_output = devtool.upgrade(pkg_ctx['PN'], pkg_ctx['NPV'], pkg_ctx['NSRCREV'])
+    except DevtoolError as e1:
+        try:
+            devtool_output = devtool.reset(pkg_ctx['PN'])
+            _rm_source_tree(devtool_output)
+        except DevtoolError as e2:
+            pass
+        raise e1
+
+    license_diff_info = _extract_license_diff(devtool_output)
+    if len(license_diff_info) > 0:
+        pkg_ctx['license_diff_fn'] = "license-diff.txt"
+        with open(os.path.join(pkg_ctx['workdir'], pkg_ctx['license_diff_fn']), 'wb') as f:
+            f.write(b"".join(license_diff_info))
+
+    D(" 'devtool upgrade' printed:\n%s" %(devtool_output))
+
+def _compile(bb, pkg, machine, workdir):
+        try:
+            bb.complete(pkg, machine)
+        except Error as e:
+            with open("{}/bitbake-output-{}.txt".format(workdir, machine), 'w') as f:
+                f.write(e.stdout)
+            for line in e.stdout.split("\n"):
+                # version going backwards is not a real error
+                if re.match(".* went backwards which would break package feeds .*", line):
+                    break
+            else:
+                raise CompilationError()
+
+def compile(devtool, bb, git, opts, pkg_ctx):
     if opts['skip_compilation']:
         W(" %s: Compilation was skipped by user choice!")
         return
 
     for machine in opts['machines']:
-        I(" %s: compiling for %s ..." % (pkg_ctx['PN'], machine))
-        pkg_ctx['recipe'].compile(machine)
+        I(" %s: compiling upgraded version for %s ..." % (pkg_ctx['PN'], machine))
+        _compile(bb, pkg_ctx['PN'], machine, pkg_ctx['workdir'])
         if opts['buildhistory']:
             pkg_ctx['buildhistory'].add()
 
-def buildhistory_diff(bb, git, opts, pkg_ctx):
+def buildhistory_diff(devtool, bb, git, opts, pkg_ctx):
     if not opts['buildhistory']:
         return
 
     I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
     pkg_ctx['buildhistory'].diff()
 
+def _rm_source_tree(devtool_output):
+    for line in devtool_output.split("\n"):
+        if line.startswith("NOTE: Leaving source tree"):
+            srctree = line.split()[4]
+            shutil.rmtree(srctree)
+
+def devtool_finish(devtool, bb, git, opts, pkg_ctx):
+    try:
+        devtool_output = devtool.finish(pkg_ctx['PN'], pkg_ctx['recipe_dir'])
+        _rm_source_tree(devtool_output)
+        D(" 'devtool finish' printed:\n%s" %(devtool_output))
+    except DevtoolError as e1:
+        try:
+            devtool_output = devtool.reset(pkg_ctx['PN'])
+            _rm_source_tree(devtool_output)
+        except DevtoolError as e2:
+            pass
+        raise e1
+
 upgrade_steps = [
-    (clean_repo, "Cleaning git repository of temporary branch ..."),
     (load_env, "Loading environment ..."),
-    (detect_recipe_type, None),
     (buildhistory_init, None),
-    (unpack_original, "Fetch & unpack original version ..."),
-    (pack_original_workdir, None),
-    (rename, "Renaming recipes, reset PR (if exists) ..."),
-    (cleanall, "Clean all ..."),
-    (fetch, "Fetch new version (old checksums) ..."),
-    (unpack_original_workdir, None),
+    (devtool_upgrade, "Running 'devtool upgrade' ..."),
+    (devtool_finish, "Running 'devtool finish' ..."),
     (compile, None),
-    (buildhistory_diff, None)
+    (buildhistory_diff, None),
 ]
diff --git a/modules/utils/devtool.py b/modules/utils/devtool.py
new file mode 100644
index 0000000..7f5b5d4
--- /dev/null
+++ b/modules/utils/devtool.py
@@ -0,0 +1,41 @@
+import os
+import logging as log
+from logging import debug as D
+
+from utils.bitbake import *
+
+class Devtool(object):
+    def __init__(self):
+        super(Devtool, self).__init__()
+
+    def _cmd(self, operation):
+        cmd = "devtool " + operation
+        try:
+            D("Running '%s'" %(cmd))
+            stdout, stderr = bb.process.run(cmd)
+        except bb.process.ExecutionError as e:
+            D("%s returned:\n%s" % (cmd, e.__str__()))
+            raise DevtoolError("The following devtool command failed: " + operation,
+                        e.stdout, e.stderr)
+
+        return stdout
+
+    def upgrade(self, recipe, version = None, revision = None):
+        cmd = " upgrade " + recipe
+        if version and not version.endswith("-new-commits-available"):
+            cmd = cmd + " -V " + version
+        if revision and revision != "N/A":
+            cmd = cmd + " -S " + revision
+        return self._cmd(cmd)
+
+    def finish(self, recipe, layer):
+        cmd = " finish -f " + recipe + " " + layer
+        return self._cmd(cmd)
+
+    def reset(self, recipe = None):
+        if recipe:
+            cmd = " reset -n " + recipe
+        else:
+            cmd = " reset -a"
+        return self._cmd(cmd)
+
diff --git a/upgradehelper.py b/upgradehelper.py
index 9a59941..5149993 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -51,6 +51,7 @@ sys.path.insert(1, os.path.join(os.path.abspath(
 from errors import *
 
 from utils.git import Git
+from utils.devtool import Devtool
 from utils.bitbake import *
 from utils.emailhandler import Email
 
@@ -132,6 +133,7 @@ class Updater(object):
         build_dir = get_build_dir()
 
         self.bb = Bitbake(build_dir)
+        self.devtool = Devtool()
 
         try:
             self.base_env = self.bb.env()
@@ -386,25 +388,23 @@ class Updater(object):
 
     def commit_changes(self, pkg_ctx):
         fail = False
-
         try:
             pkg_ctx['patch_file'] = None
 
-            if 'recipe' in pkg_ctx:
-                I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
-                self.git.commit(pkg_ctx['recipe'].commit_msg, self.opts['author'])
+            I(" %s: Auto commit changes ..." % pkg_ctx['PN'])
+            self.git.commit(pkg_ctx['commit_msg'], self.opts['author'])
 
-                stdout = self.git.create_patch(pkg_ctx['workdir'])
-                pkg_ctx['patch_file'] = stdout.strip()
+            stdout = self.git.create_patch(pkg_ctx['workdir'])
+            pkg_ctx['patch_file'] = stdout.strip()
 
-                if not pkg_ctx['patch_file']:
-                    msg = "Patch file not generated."
-                    E(" %s: %s\n %s" % (pkg_ctx['PN'], msg, stdout))
-                    pkg_ctx['error'] = Error(msg, stdout)
-                    fail = True
-                else:
-                    I(" %s: Save patch in directory: %s." %
-                        (pkg_ctx['PN'], pkg_ctx['workdir']))
+            if not pkg_ctx['patch_file']:
+                msg = "Patch file not generated."
+                E(" %s: %s\n %s" % (pkg_ctx['PN'], msg, stdout))
+                pkg_ctx['error'] = Error(msg, stdout)
+                fail = True
+            else:
+                I(" %s: Save patch in directory: %s." %
+                    (pkg_ctx['PN'], pkg_ctx['workdir']))
         except Error as e:
             msg = ''
 
@@ -568,7 +568,7 @@ class Updater(object):
                 for step, msg in upgrade_steps:
                     if msg is not None:
                         I(" %s: %s" % (pkg_ctx['PN'], msg))
-                    step(self.bb, self.git, self.opts, pkg_ctx)
+                    step(self.devtool, self.bb, self.git, self.opts, pkg_ctx)
                 succeeded_pkgs_ctx.append(pkg_ctx)
 
                 I(" %s: Upgrade SUCCESSFUL! Please test!" % pkg_ctx['PN'])
-- 
2.15.0


