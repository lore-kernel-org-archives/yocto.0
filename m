Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 025F8E00AA8; Mon,  3 Aug 2015 12:04:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 592F9E00A4C
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 12:04:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 12:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,603,1432623600"; d="scan'208";a="775902982"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 12:04:42 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 14:04:38 -0500
Message-Id: <1438628679-8626-11-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
References: <1438628679-8626-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCHv2 10/11][auh] upgradehelper.py: Move upstream versioning code to UniverseUpdater
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
X-List-Received-Date: Mon, 03 Aug 2015 19:04:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Reorder code related to upstream versioning detection no makes sense
to have in Updater because only in UniverseUpdater is used.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 161 ++++++++++++++++++++++++++-----------------------------
 1 file changed, 77 insertions(+), 84 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 8cca23e..80c7ef5 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -265,63 +265,12 @@ class Updater(object):
             I(" %s: compiling for %s ..." % (self.pn, machine))
             self.recipe.compile(machine)
 
-    def _check_upstream_versions(self, packages=[("universe", None, None)]):
-        I(" Fetching upstream version(s) ...")
-
-        try:
-            self.bb.checkpkg(" ".join([p[0] for p in packages]))
-        except Error as e:
-            for line in e.stdout.split('\n'):
-                if line.find("ERROR: Task do_checkpkg does not exist") == 0:
-                    C(" \"distrodata.bbclass\" not inherited. Consider adding "
-                      "the following to your local.conf:\n\n"
-                      "INHERIT =+ \"distrodata\"\n")
-                    exit(1)
-
-    def _parse_checkpkg_file(self, file_path):
-        import csv
-
-        pkgs_list = []
-
-        with open(file_path, "r") as f:
-            reader = csv.reader(f, delimiter='\t')
-            for row in reader:
-                if reader.line_num == 1: # skip header line
-                    continue
-
-                pn = row[0]
-                cur_ver = row[1]
-                next_ver = row[2]
-                status = row[11]
-                maintainer = row[14]
-                no_upgrade_reason = row[15]
-
-                if status == 'UPDATE' and not no_upgrade_reason:
-                    pkgs_list.append((pn, next_ver, maintainer))
-                else:
-                    if no_upgrade_reason:
-                        D(" Skip package %s (status = %s, current version = %s," \
-                            " next version = %s, no upgrade reason = %s)" %
-                            (pn, status, cur_ver, next_ver, no_upgrade_reason))
-                    else:
-                        D(" Skip package %s (status = %s, current version = %s," \
-                            " next version = %s)" %
-                            (pn, status, cur_ver, next_ver))
-        return pkgs_list
-
     def _get_packages_to_upgrade(self, packages=None):
         if packages is None:
-            return []
-
-        if len(packages) == 1:
-            # if user specified the version to upgrade to, just return the
-            # tuple intact
-            if packages[0][1] is not None:
-                return packages
-
-        self._check_upstream_versions(packages)
-
-        return self._parse_checkpkg_file(get_build_dir() + "/tmp/log/checkpkg.csv")
+            I( "Nothing to upgrade")
+            exit(0)
+        else:
+            return packages
 
     # this function will be called at the end of each recipe upgrade
     def pkg_upgrade_handler(self, err):
@@ -530,6 +479,75 @@ class UniverseUpdater(Updater):
                                                         line.split(',')[3],
                                                         line.split(',')[4]]
 
+    def _update_master(self):
+        I(" Drop all uncommited changes (including untracked) ...")
+        self.git.reset_hard()
+        self.git.clean_untracked()
+
+        self.git.checkout_branch("master")
+        try:
+            self.git.delete_branch("upgrades")
+        except Error:
+            pass
+        I(" Sync master ...")
+        self.git.pull()
+        self.git.create_branch("upgrades")
+
+    def _prepare(self):
+        if settings.get("clean_sstate", "no") == "yes" and \
+                os.path.exists(os.path.join(get_build_dir(), "sstate-cache")):
+            I(" Removing sstate directory ...")
+            shutil.rmtree(os.path.join(get_build_dir(), "sstate-cache"))
+        if settings.get("clean_tmp", "no") == "yes" and \
+                os.path.exists(os.path.join(get_build_dir(), "tmp")):
+            I(" Removing tmp directory ...")
+            shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
+
+
+    def _check_upstream_versions(self, packages=[("universe", None, None)]):
+        I(" Fetching upstream version(s) ...")
+
+        try:
+            self.bb.checkpkg(" ".join([p[0] for p in packages]))
+        except Error as e:
+            for line in e.stdout.split('\n'):
+                if line.find("ERROR: Task do_checkpkg does not exist") == 0:
+                    C(" \"distrodata.bbclass\" not inherited. Consider adding "
+                      "the following to your local.conf:\n\n"
+                      "INHERIT =+ \"distrodata\"\n")
+                    exit(1)
+
+    def _parse_checkpkg_file(self, file_path):
+        import csv
+
+        pkgs_list = []
+
+        with open(file_path, "r") as f:
+            reader = csv.reader(f, delimiter='\t')
+            for row in reader:
+                if reader.line_num == 1: # skip header line
+                    continue
+
+                pn = row[0]
+                cur_ver = row[1]
+                next_ver = row[2]
+                status = row[11]
+                maintainer = row[14]
+                no_upgrade_reason = row[15]
+
+                if status == 'UPDATE' and not no_upgrade_reason:
+                    pkgs_list.append((pn, next_ver, maintainer))
+                else:
+                    if no_upgrade_reason:
+                        D(" Skip package %s (status = %s, current version = %s," \
+                            " next version = %s, no upgrade reason = %s)" %
+                            (pn, status, cur_ver, next_ver, no_upgrade_reason))
+                    else:
+                        D(" Skip package %s (status = %s, current version = %s," \
+                            " next version = %s)" %
+                            (pn, status, cur_ver, next_ver))
+        return pkgs_list
+
     # checks if maintainer is in whitelist and that the recipe itself is not
     # blacklisted: python, gcc, etc. Also, check the history if the recipe
     # hasn't already been tried
@@ -580,30 +598,6 @@ class UniverseUpdater(Updater):
 
         return True
 
-    def update_master(self):
-        I(" Drop all uncommited changes (including untracked) ...")
-        self.git.reset_hard()
-        self.git.clean_untracked()
-
-        self.git.checkout_branch("master")
-        try:
-            self.git.delete_branch("upgrades")
-        except Error:
-            pass
-        I(" Sync master ...")
-        self.git.pull()
-        self.git.create_branch("upgrades")
-
-    def prepare(self):
-        if settings.get("clean_sstate", "no") == "yes" and \
-                os.path.exists(os.path.join(get_build_dir(), "sstate-cache")):
-            I(" Removing sstate directory ...")
-            shutil.rmtree(os.path.join(get_build_dir(), "sstate-cache"))
-        if settings.get("clean_tmp", "no") == "yes" and \
-                os.path.exists(os.path.join(get_build_dir(), "tmp")):
-            I(" Removing tmp directory ...")
-            shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
-
     def _get_packages_to_upgrade(self, packages=None):
         last_date_checked = None
         last_master_commit = None
@@ -649,7 +643,7 @@ class UniverseUpdater(Updater):
 
         return pkgs_list
 
-    def update_history(self, pn, new_ver, maintainer, upgrade_status):
+    def _update_history(self, pn, new_ver, maintainer, upgrade_status):
         with open(self.history_file + ".tmp", "w+") as tmp_file:
             if os.path.exists(self.history_file):
                 with open(self.history_file) as history:
@@ -661,15 +655,14 @@ class UniverseUpdater(Updater):
                            upgrade_status + "\n")
         os.rename(self.history_file + ".tmp", self.history_file)
 
-    # overriding the base method
     def pkg_upgrade_handler(self, err):
         super(UniverseUpdater, self).pkg_upgrade_handler(err)
-        self.update_history(self.pn, self.new_ver, self.maintainer,
+        self._update_history(self.pn, self.new_ver, self.maintainer,
                 self._get_status_msg(err))
 
     def run(self):
-        self.update_master()
-        self.prepare()
+        self._update_master()
+        self._prepare()
         super(UniverseUpdater, self).run()
 
 def close_child_processes(signal_id, frame):
-- 
1.9.1


