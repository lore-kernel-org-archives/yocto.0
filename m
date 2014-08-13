Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8067CE007D9; Wed, 13 Aug 2014 06:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9E4E0079A
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:21 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867206"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:25:59 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:02 +0300
Message-Id: <1407936728-15722-2-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 1/7] Add buildhistory-diff as attachment to email
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
X-List-Received-Date: Wed, 13 Aug 2014 13:29:25 -0000

buildhistory-diff is useful in the case new files have been
added to the package.

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 bitbake.py       |   28 ++++++++++++++++++++++++++++
 recipe.py        |    3 +--
 upgradehelper.py |   21 ++++++++++++++-------
 3 files changed, 43 insertions(+), 9 deletions(-)

diff --git a/bitbake.py b/bitbake.py
index e56ee6d..2207634 100644
--- a/bitbake.py
+++ b/bitbake.py
@@ -24,6 +24,7 @@
 
 import os
 import logging as log
+from logging import info as I
 from logging import debug as D
 from logging import error as E
 import sys
@@ -97,3 +98,30 @@ class Bitbake(object):
 
     def dependency_graph(self, package_list):
         return self._cmd(package_list, "-g")
+
+class BuildHistory(object):
+    def __init__(self, build_dir):
+        self.build_dir = build_dir
+        self.work_dir = None
+
+    def set_work_dir(self, work_dir):
+        self.work_dir = work_dir
+
+    # Return True if buildhistory-diff gives output
+    def diff(self, revision_steps):
+        os.chdir(self.build_dir)
+        cmd = "buildhistory-diff HEAD~" + str(revision_steps)
+
+        try:
+            stdout, stderr = bb.process.run(cmd)
+            # Write diff output to log file if there is any
+            if stdout and os.path.exists(self.work_dir):
+                with open(os.path.join(self.work_dir, "buildhistory.txt"), "w+") as log:
+                    log.write(stdout)
+                return True
+        except bb.process.ExecutionError as e:
+            D("%s returned:\n%s" % (cmd, e.__str__()))
+            raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
+
+        return False
+
diff --git a/recipe.py b/recipe.py
index cbb8ded..a495b49 100644
--- a/recipe.py
+++ b/recipe.py
@@ -408,7 +408,7 @@ class Recipe(object):
                 failed_tasks[task_log_match.group(2)] = (task_log_match.group(3), task_log_match.group(1))
             elif qa_issue_match:
                 # Improvise path to log file
-                failed_tasks[qa_issue_match.group(1)] = ("do_package", self.bb.get_stdout_log()) 
+                failed_tasks[qa_issue_match.group(1)] = ("do_package", self.bb.get_stdout_log())
             elif machine_match:
                 machine = machine_match.group(1)
 
@@ -647,4 +647,3 @@ class Recipe(object):
                     # throw a compilation exception for everything else. It
                     # doesn't really matter
                     raise CompilationError()
-
diff --git a/upgradehelper.py b/upgradehelper.py
index 006dd0b..091881f 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -123,6 +123,7 @@ class Updater(object):
             os.mkdir(self.uh_dir)
 
         self.bb = Bitbake(get_build_dir())
+        self.buildhistory = BuildHistory(get_build_dir())
         self.git = None
 
         self.author = None
@@ -253,6 +254,14 @@ class Updater(object):
             I(" %s: compiling for %s ..." % (self.pn, machine))
             self.recipe.compile(machine)
 
+    def _review(self):
+        # Check build_history
+        if not self.skip_compilation:
+            I(" %s: Checking buildhistory ..." % self.pn)
+            self.buildhistory.set_work_dir(self.workdir)
+            if self.buildhistory.diff(len(self.machines)):
+               I(" %s: Wrote buildhistory-diff output ..." % self.pn)
+
     def _check_upstream_versions(self, packages=[("universe", None, None)]):
         I(" Fetching upstream version(s) ...")
 
@@ -605,14 +614,12 @@ class UniverseUpdater(Updater, Email):
 
         msg_body += self.mail_footer
 
+        # Add possible attachments to list
         attachments = []
-        if self.patch_file is not None:
-            attachments.append(self.patch_file)
-        # License issue
-        if status == "LicenseError":
-            attachments.append(self.recipe.license_diff_file)
-        elif err is not None:
-            attachments.append(os.path.join(self.workdir, "bitbake_log.txt"))
+        for attachment in os.listdir(self.workdir):
+            attachment_fullpath = os.join(self.workdir, attachment)
+            if isfile(attachment_fullpath):
+                attachments.append(attachment_fullpath)
 
         self.send_email(to_addr, subject, msg_body, attachments)
 
-- 
1.7.9.5


