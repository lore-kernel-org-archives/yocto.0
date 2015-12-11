Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20668E00B46; Fri, 11 Dec 2015 13:14:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48BBEE00ADF
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 13:14:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2015 13:14:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,415,1444719600"; d="scan'208";a="839480669"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.48])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2015 13:14:06 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Dec 2015 15:15:04 -0600
Message-Id: <1449868505-9291-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
References: <1449868505-9291-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 3/4] upgradehelper.py: Don't remove patches if fails to apply
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
X-List-Received-Date: Fri, 11 Dec 2015 21:14:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Instead of remove patches when fails to apply now comment it
this helps the maintainer to review why the patch failed to
apply.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/recipe/base.py | 114 ++++++++++++++++++++++++++++++-------------------
 upgradehelper.py       |   4 +-
 2 files changed, 72 insertions(+), 46 deletions(-)

diff --git a/modules/recipe/base.py b/modules/recipe/base.py
index 535e6ab..43db1f4 100644
--- a/modules/recipe/base.py
+++ b/modules/recipe/base.py
@@ -93,7 +93,7 @@ class Recipe(object):
         self.old_env = None
 
         self.commit_msg = self.env['PN'] + ": upgrade to " + self.new_ver + "\n\n"
-        self.rm_patches_msg = "\n\nRemoved the following patch(es):\n"
+        self.comment_patches_msg = "\n\nCommented the following patch(es):\n"
 
         self._inherits = None
 
@@ -257,43 +257,65 @@ class Recipe(object):
         d['source_found'] = False
         _change(self.env, self.recipe_dir, d)
 
-    def _remove_patch_uri(self, uri):
+    def _comment_patch_uri(self, uri):
         @modify_recipe_files
-        def _remove(line, temp_recipe, *args, **kwargs):
+        def _comment(line, temp_recipe, *args, **kwargs):
             d = args[0]
+            uri = d['uri']
 
-            if line.find(uri) == -1:
-               temp_recipe.write(line)
+            m1 = re.match("SRC_URI *\+*= *\" *" + uri + " *\"", line)
+            m2 = re.match("(SRC_URI *\+*= *\" *)" + uri + " *\\\\", line)
+            m3 = re.match("[\t ]*" + uri + " *\\\\", line)
+            m4 = re.match("([\t ]*)" + uri + " *\"", line)
+
+            if m1 or m2 or m3 or m4:
+                d['commented'] = True
+
+                if not d['start']:
+                    d['start'] = True
+
+                # patch on a single SRC_URI line:
+                if m1:
+                    d['patches'].append(line)
+                    d['end'] = True
+                # patch is on the first SRC_URI line
+                elif m2:
+                    d['patches'].append(line)
+                    temp_recipe.write(m2.group(1) + "\\\n")
+                # patch is in the middle
+                elif m3:
+                    d['patches'].append(line)
+                # patch is last in list
+                elif m4:
+                    d['end'] = True
+                    d['patches'].append(line)
+                    temp_recipe.write(m4.group(1) + "\"\n")
             else:
-               m1 = re.match("SRC_URI *\+*= *\" *" + uri + " *\"", line)
-               m2 = re.match("(SRC_URI *\+*= *\" *)" + uri + " *\\\\", line)
-               m3 = re.match("[\t ]*" + uri + " *\\\\", line)
-               m4 = re.match("([\t ]*)" + uri + " *\"", line)
-
-               # patch on a single SRC_URI line:
-               if m1:
-                   return
-               # patch is on the first SRC_URI line
-               elif m2:
-                   temp_recipe.write(m2.group(1) + "\\\n")
-               # patch is in the middle
-               elif m3:
-                   return
-               # patch is last in list
-               elif m4:
-                   temp_recipe.write(m4.group(1) + "\"\n")
-               # nothing matched in recipe but we deleted the patch
-               # anyway? Then we must bail out!
-               else:
-                   d['removed'] = False
+                temp_recipe.write(line)
+
+                if d['start'] and (d['end'] or line.startswith('"')):
+                    if d['patches']:
+                        for p in d['patches']:
+                            line = p.rstrip()
+                            if line.endswith('\\'):
+                                line = line[:-1]
+                            temp_recipe.write("#%s\n" % line)
+
+                    d['start'] = False
+                    d['end'] = False
 
         d = {}
-        d['removed'] = True
-        _remove(self.env, self.recipe_dir, d)
+        d['commented'] = False
+
+        d['uri'] = uri
+        d['patches'] = []
+        d['start'] = False
+        d['end'] = False
+        _comment(self.env, self.recipe_dir, d)
 
-        return d['removed']
+        return d['commented']
 
-    def _remove_faulty_patch(self, patch_log):
+    def _comment_faulty_patch(self, patch_log):
         patch_file = None
         is_reverse_applied = False
 
@@ -311,7 +333,7 @@ class Recipe(object):
         if not patch_file:
             return False
 
-        I(" %s: Removing patch %s ..." % (self.env['PN'], patch_file))
+        I(" %s: Commenting patch %s ..." % (self.env['PN'], patch_file))
         reason = None
         found = False
         dirs = [self.env['PN'] + "-" + self.env['PKGV'], self.env['PN'], "files"]
@@ -321,24 +343,26 @@ class Recipe(object):
                 continue
             else:
                 found = True
+
                 # Find out upstream status of the patch
                 with open(patch_file_path) as patch:
                     for line in patch:
                         m = re.match(".*Upstream-Status:(.*)\n", line)
                         if m:
                             reason = m.group(1).strip().split()[0].lower()
-                os.remove(patch_file_path)
-                if not self._remove_patch_uri("file://" + patch_file):
+
+                if not self._comment_patch_uri("file://" + patch_file):
                     return False
         if not found:
             return False
 
-        self.rm_patches_msg += " * " + patch_file
+        self.comment_patches_msg += " * " + patch_file
         if reason:
-            self.rm_patches_msg += " (" + reason + ") "
+            self.comment_patches_msg += " (" + reason + ") "
         if is_reverse_applied:
-            self.rm_patches_msg += "+ reverse-applied"
-        self.rm_patches_msg += "\n"
+            self.comment_patches_msg += "+ reverse-applied"
+        self.comment_patches_msg += "\n"
+
         return True
 
     def _is_license_issue(self, config_log):
@@ -628,7 +652,7 @@ class Recipe(object):
         # Undo removed patches
         if self.removed_patches:
             self.git.checkout_branch("upgrades")
-            self.git.delete_branch("remove_patches")
+            self.git.delete_branch("comment_patches")
             self.git.reset_hard()
             self.git.reset_soft(1)
             self.removed_patches = False
@@ -639,9 +663,9 @@ class Recipe(object):
             if self.removed_patches:
                 # move temporary changes into upgrades branch
                 self.git.checkout_branch("upgrades")
-                self.git.delete_branch("remove_patches")
+                self.git.delete_branch("comment_patches")
                 self.git.reset_soft(1)
-                self.commit_msg += self.rm_patches_msg + "\n"
+                self.commit_msg += self.comment_patches_msg + "\n"
                 self.removed_patches = False
         except Error as e:
             if self._is_incompatible_host(e.stdout):
@@ -659,14 +683,16 @@ class Recipe(object):
                 failed_task = failed_recipes[self.env['PN']][0]
                 log_file = failed_recipes[self.env['PN']][1]
                 if failed_task == "do_patch":
-                    # Remove one patch after the other until
+
+                    # Comment one patch after the other until
                     # compilation works.
                     if not self.removed_patches:
                         self.git.commit("temporary")
-                        self.git.create_branch("remove_patches")
-                        self.git.checkout_branch("remove_patches")
+                        self.git.create_branch("comment_patches")
+                        self.git.checkout_branch("comment_patches")
                         self.removed_patches = True
-                    if not self._remove_faulty_patch(log_file):
+
+                    if not self._comment_faulty_patch(log_file):
                         self._undo_temporary()
                         raise PatchError()
 
diff --git a/upgradehelper.py b/upgradehelper.py
index 6f4406b..a626192 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -289,8 +289,8 @@ class Updater(object):
             "The recipe has been successfully compiled for machines %s.\n\n" \
             "Next steps:\n" \
             "    - apply the patch: git am %s\n" \
-            "    - check that required upstream patches have not been removed from the recipe,\n" \
-            "      if upstream patches were removed the reason is specified in the commit message.\n" \
+            "    - check that required upstream patches have not been commented from the recipe,\n" \
+            "      if upstream patches were commented the reason is specified in the commit message.\n" \
             "    - compile an image that contains the package\n" \
             "    - perform some basic sanity tests\n" \
             "    - amend the patch and sign it off: git commit -s --reset-author --amend\n" \
-- 
2.1.4


