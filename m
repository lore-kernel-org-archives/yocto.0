Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8006E009E6; Wed, 10 Jun 2015 09:30:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B691DE00A28
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 09:30:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 10 Jun 2015 09:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,588,1427785200"; d="scan'208";a="585476963"
Received: from yctb03.ostc.intel.com (HELO yctb03.otcr.jf.intel.com)
	([10.23.219.52])
	by orsmga003.jf.intel.com with ESMTP; 10 Jun 2015 09:30:13 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Jun 2015 16:28:43 +0000
Message-Id: <1433953732-29963-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
In-Reply-To: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 02/11][auh] upgradehelper.py: Make usage of new upstream detection mechanism
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
X-List-Received-Date: Wed, 10 Jun 2015 16:30:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Change logic to use new values in checkpkg file generated with new
 oe.recipeutils.get_recipe_upstream_version and distrodata class.

Remove CSV parsing by hand use csv module and also add debugging when
discard recipes.

[YOCTO #7488]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 96 ++++++++++++++++++++++++++++----------------------------
 1 file changed, 48 insertions(+), 48 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 366efb3..6af79a0 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -189,19 +189,6 @@ class Updater(object):
         self.env = bb_env
         self.recipe_dir = os.path.dirname(self.env['FILE'])
 
-    def _parse_checkpkg_line(self, line):
-        m = re.match("^([^ \t]*)[ \t]+([^ \t]*)[ \t]+([^ \t]*)[ \t]+.*", line)
-        if m:
-            res = (m.group(1), m.group(2), m.group(3))
-            m = re.search("<([^ \t]+@[^ \t]+)>", line)
-            if m:
-                maintainer = m.group(1)
-            else:
-                maintainer = None
-            return res + (maintainer,)
-
-        return (None, None, None, None)
-
     def _detect_recipe_type(self):
         if self.env['SRC_URI'].find("ftp://") != -1 or  \
                 self.env['SRC_URI'].find("http://") != -1 or \
@@ -309,7 +296,41 @@ class Updater(object):
                     C(" \"distrodata.bbclass\" not inherited. Consider adding "
                       "the following to your local.conf:\n\n"
                       "INHERIT =+ \"distrodata\"\n")
-                    exit(1)
+                else:
+                    C(line)
+
+            exit(1)
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
 
     def _get_packages_to_upgrade(self, packages=None):
         if packages is None:
@@ -323,25 +344,7 @@ class Updater(object):
 
         self._check_upstream_versions(packages)
 
-        pkgs_list = []
-
-        with open(get_build_dir() + "/tmp/log/checkpkg.csv") as csv:
-            # Skip header line
-            next(csv)
-            for line in csv:
-                (pn, cur_ver, next_ver, maintainer) = self._parse_checkpkg_line(line)
-
-                if (pn, cur_ver, next_ver, maintainer) == (None, None, None, None):
-                    continue
-
-                if cur_ver != next_ver and next_ver != "N/A" and \
-                        next_ver != "INVALID":
-                    pkgs_list.append((pn, next_ver, maintainer))
-                else:
-                    W(" Skip package %s (current version = %s, next version = %s)" %
-                        (pn, cur_ver, next_ver))
-
-        return pkgs_list
+        return self._parse_checkpkg_file(get_build_dir() + "/tmp/log/checkpkg.csv")
 
     # this function will be called at the end of each recipe upgrade
     def pkg_upgrade_handler(self, err):
@@ -455,7 +458,6 @@ class Updater(object):
             W("No recipes attempted, not sending status mail!")
 
     def run(self, package_list=None):
-#[lp]        pkgs_to_upgrade = self._order_list(self._get_packages_to_upgrade(package_list))
         pkgs_to_upgrade = self._get_packages_to_upgrade(package_list)
 
         total_pkgs = len(pkgs_to_upgrade)
@@ -521,24 +523,27 @@ class UniverseUpdater(Updater):
     # checks if maintainer is in whitelist and that the recipe itself is not
     # blacklisted: python, gcc, etc. Also, check the history if the recipe
     # hasn't already been tried
-    def pkg_upgradable(self, pn, next_ver, maintainer):
+    def _pkg_upgradable(self, pn, next_ver, maintainer):
         if not maintainer:
-            D("Skipping upgrade of %s: no maintainer" % pn)
+            D(" Skipping upgrade of %s: no maintainer" % pn)
             return False
 
         if "blacklist" in settings:
             for p in settings["blacklist"].split():
                 if p == pn:
+                    D(" Skipping upgrade of %s: blacklist" % pn)
                     return False
 
         if "maintainers_whitelist" in settings:
             found = False
             for m in settings["maintainers_whitelist"].split():
-                if m == maintainer:
+                if maintainer.find(m) != -1:
                     found = True
                     break
 
-            if not found:
+            if found == False:
+                D(" Skipping upgrade of %s: maintainer \"%s\" not in whitelist" %
+                        (pn, maintainer))
                 return False
 
         if pn in self.history:
@@ -553,12 +558,14 @@ class UniverseUpdater(Updater):
                         self.history[pn][3] == str(Error())) and retry_delta > 7:
                     return True
 
+                D(" Skipping upgrade of %s: is in history and not 7 days passed" % pn)
                 return False
 
         # drop native/cross/cross-canadian recipes. We deal with native
         # when upgrading the main recipe but we keep away of cross* pkgs...
         # for now
         if pn.find("cross") != -1 or pn.find("native") != -1:
+            D(" Skipping upgrade of %s: is cross or native" % pn)
             return False
 
         return True
@@ -616,22 +623,15 @@ class UniverseUpdater(Updater):
               " check date are the same ...")
 
         pkgs_list = []
-
-        with open(last_checkpkg_file, "r") as csv:
-            for line in csv:
-                (pn, cur_ver, next_ver, maintainer) = self._parse_checkpkg_line(line)
-                if (pn, cur_ver, next_ver, maintainer) != (None, None, None, None) and \
-                        cur_ver != next_ver and next_ver != "N/A" and \
-                        next_ver != "INVALID":
-                    if self.pkg_upgradable(pn, next_ver, maintainer):
-                        pkgs_list.append((pn, next_ver, maintainer))
+        for pkg in self._parse_checkpkg_file(last_checkpkg_file):
+            if self._pkg_upgradable(pkg[0], pkg[1], pkg[2]):
+                pkgs_list.append(pkg)
 
         # Update last_checkpkg_run only after the version check has been completed
         with open(get_build_dir() + "/upgrade-helper/last_checkpkg_run", "w+") as last_check:
             last_check.write(current_date + "," + cur_master_commit + "," +
                              last_checkpkg_file)
 
-
         print("########### The list of recipes to be upgraded ############")
         for p, v, m in pkgs_list:
             print("%s,%s,%s" % (p, v, m))
-- 
1.8.4.5


