Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05015E00AE4; Wed, 25 Nov 2015 16:00:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64089E009C3
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:07 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188963"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:06 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:36 -0600
Message-Id: <1448496046-13186-8-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 07/17] recipe/base.py: Add modify_recipe_files function decorator
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Remove duplicate code adding modify_recipe_files decorator,
this function interate over recipe_dir and found bb and
includes files to make modifications.

Modifications to recipe bb and include files are made by
function passed to modify_recipe_files.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/recipe/base.py | 293 +++++++++++++++++++++++--------------------------
 1 file changed, 140 insertions(+), 153 deletions(-)

diff --git a/modules/recipe/base.py b/modules/recipe/base.py
index 15c5f43..5c70c61 100644
--- a/modules/recipe/base.py
+++ b/modules/recipe/base.py
@@ -33,18 +33,30 @@ from logging import warning as W
 from errors import *
 from utils.bitbake import *
 
-def is_recipe_or_include_file(full_path_f, f):
+def is_recipe_or_include_file(env, full_path_f, f):
     is_file = os.path.isfile(full_path_f)
 
-    is_recipe = f.find(self.env['PN']) == 0 and \
-                f.find(self.env['PKGV']) != -1 and \
+    is_recipe = f.find(env['PN']) == 0 and \
+                f.find(env['PKGV']) != -1 and \
                 f.find(".bb") != -1
 
-    is_include = f.find(self.env['PN']) == 0 and \
+    is_include = f.find(env['PN']) == 0 and \
                  f.find(".inc") != -1
 
     return is_file and (is_recipe or is_include)
 
+def modify_recipe_files(func):
+    def modify(env, recipe_dir):
+        for f in os.listdir(recipe_dir):
+            full_path_f = os.path.join(recipe_dir, f)
+            if is_recipe_or_include_file(env, full_path_f, f):
+                with open(full_path_f + ".tmp", "w+") as temp_recipe:
+                    with open(full_path_f) as recipe:
+                        for line in recipe:
+                            func(line, temp_recipe)
+                os.rename(full_path_f + ".tmp", full_path_f)
+    return modify
+
 class Recipe(object):
     def __init__(self, env, new_ver, interactive, workdir, recipe_dir, bitbake, git):
         self.env = env
@@ -90,18 +102,12 @@ class Recipe(object):
             self.git.mv(src_dir, dest_dir)
 
     def rename(self):
-        # change PR before renaming
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if is_recipe_or_include_file(full_path_f, f):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            if line.startswith("PR=") or line.startswith("PR ="):
-                                continue
-                            else:
-                                temp_recipe.write(line)
-                os.rename(full_path_f + ".tmp", full_path_f)
+        # clean PR before renaming
+        @modify_recipe_files
+        def _clean_pr(line, temp_recipe):
+            if not (line.startswith("PR=") or line.startswith("PR =")):
+                temp_recipe.write(line)
+        _clean_pr(self.env, self.recipe_dir)
 
         # rename recipes (not directories)
         for path in os.listdir(self.recipe_dir):
@@ -121,8 +127,6 @@ class Recipe(object):
         # since we did some renaming, backup the current environment
         self.old_env = self.env
 
-        # start formatting the commit message
-
     def create_diff_file(self, file, old_md5, new_md5):
         old_file = os.path.join(self.old_env['S'], file)
         new_file = os.path.join(self.env['S'], file)
@@ -138,20 +142,6 @@ class Recipe(object):
             f.write("old checksum = %s\n" % old_md5)
             f.write("new_checksum = %s\n" % new_md5)
 
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if is_recipe_or_include_file(full_path_f, f):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            m = re.match("(.*)" + old_md5 + "(.*)", line)
-                            if m is not None:
-                                temp_recipe.write(m.group(1) + new_md5 + m.group(2) + "\n")
-                            else:
-                                temp_recipe.write(line)
-
-                os.rename(full_path_f + ".tmp", full_path_f)
-
     def _change_recipe_checksums(self, fetch_log):
         sums = {}
 
@@ -178,27 +168,23 @@ class Recipe(object):
         if len(sums) == 0:
             raise FetchError()
 
-        I(" %s: Update recipe checksums ..." % self.env['PN'])
         # checksums are usually in the main recipe but they can also be in inc
         # files... Go through the recipes/inc files until we find them
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if is_recipe_or_include_file(full_path_f, f):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        for line in recipe:
-                            for name in sums:
-                                m1 = re.match("^SRC_URI\["+ name + "md5sum\].*", line)
-                                m2 = re.match("^SRC_URI\["+ name + "sha256sum\].*", line)
-                                if m1:
-                                    temp_recipe.write(sums[name]["md5sum"])
-                                elif m2:
-                                    temp_recipe.write(sums[name]["sha256sum"])
-                                else:
-                                    temp_recipe.write(line)
+        @modify_recipe_files
+        def _update_recipe_checksums(line, temp_recipe):
+            for name in sums:
+                m1 = re.match("^SRC_URI\["+ name + "md5sum\].*", line)
+                m2 = re.match("^SRC_URI\["+ name + "sha256sum\].*", line)
+                if m1:
+                    temp_recipe.write(sums[name]["md5sum"])
+                elif m2:
+                    temp_recipe.write(sums[name]["sha256sum"])
+                else:
+                    temp_recipe.write(line)
+
+        I(" %s: Update recipe checksums ..." % self.env['PN'])
+        _update_recipe_checksums(self.env, self.recipe_dir)
 
-                os.rename(full_path_f + ".tmp", full_path_f)
-        
         self.checksums_changed = True
 
     def _is_uri_failure(self, fetch_log):
@@ -218,71 +204,63 @@ class Recipe(object):
 
     def _change_source_suffix(self, new_suffix):
         # Will change the extension of the archive from the SRC_URI
-        for f in os.listdir(self.recipe_dir):
-            full_path_f = os.path.join(self.recipe_dir, f)
-            if is_recipe_or_include_file(full_path_f, f):
-                with open(full_path_f + ".tmp", "w+") as temp_recipe:
-                    with open(full_path_f) as recipe:
-                        source_found = False
-                        for line in recipe:
-                            # source on first line
-                            m1 = re.match("^SRC_URI.*\${PV}\.(.*)[\" \\\\].*", line)
-                            # SRC_URI alone on the first line
-                            m2 = re.match("^SRC_URI.*", line)
-                            # source on second line
-                            m3 = re.match(".*\${PV}\.(.*)[\" \\\\].*", line)
-                            if m1:
-                                old_suffix = m1.group(1)
-                                line = line.replace(old_suffix, new_suffix+" ")
-                            if m2 and not m1:
-                                source_found = True
-                            if m3 and source_found:
-                                old_suffix = m3.group(1)
-                                line = line.replace(old_suffix, new_suffix+" ")
-                                source_found = False
-
-                            temp_recipe.write(line)
-                os.rename(full_path_f + ".tmp", full_path_f)
+
+        source_found = False
+        @modify_recipe_files
+        def _change(line, temp_recipe):
+            # source on first line
+            m1 = re.match("^SRC_URI.*\${PV}\.(.*)[\" \\\\].*", line)
+            # SRC_URI alone on the first line
+            m2 = re.match("^SRC_URI.*", line)
+            # source on second line
+            m3 = re.match(".*\${PV}\.(.*)[\" \\\\].*", line)
+            if m1:
+                old_suffix = m1.group(1)
+                line = line.replace(old_suffix, new_suffix+" ")
+            if m2 and not m1:
+                source_found = True
+            if m3 and source_found:
+                old_suffix = m3.group(1)
+                line = line.replace(old_suffix, new_suffix+" ")
+                source_found = False
+
+            temp_recipe.write(line)
+
+        _change(self.env, self.recipe_dir)
 
     def _remove_patch_uri(self, uri):
-        recipe_files = [
-            os.path.join(self.recipe_dir, self.env['PN'] + ".inc"),
-            self.env['FILE']]
-
-        for recipe_filename in recipe_files:
-            if os.path.isfile(recipe_filename):
-                with open(recipe_filename + ".tmp", "w+") as temp_recipe:
-                    with open(recipe_filename) as recipe:
-                        for line in recipe:
-                            if line.find(uri) == -1:
-                                temp_recipe.write(line)
-                                continue
-                            
-                            m1 = re.match("SRC_URI *\+*= *\" *" + uri + " *\"", line)
-                            m2 = re.match("(SRC_URI *\+*= *\" *)" + uri + " *\\\\", line)
-                            m3 = re.match("[\t ]*" + uri + " *\\\\", line)
-                            m4 = re.match("([\t ]*)" + uri + " *\"", line)
-
-                            # patch on a single SRC_URI line:
-                            if m1:
-                                continue
-                            # patch is on the first SRC_URI line
-                            elif m2:
-                                temp_recipe.write(m2.group(1) + "\\\n")
-                            # patch is in the middle
-                            elif m3:
-                                continue
-                            # patch is last in list
-                            elif m4:
-                                temp_recipe.write(m4.group(1) + "\"\n")
-                            # nothing matched in recipe but we deleted the patch
-                            # anyway? Then we must bail out!
-                            else:
-                                return False
-
-                os.rename(recipe_filename + ".tmp", recipe_filename)
+        removed = True
 
-        return True
+        @modify_recipe_files
+        def _remove(line, temp_recipe):
+            if line.find(uri) == -1:
+               temp_recipe.write(line)
+            else:
+               m1 = re.match("SRC_URI *\+*= *\" *" + uri + " *\"", line)
+               m2 = re.match("(SRC_URI *\+*= *\" *)" + uri + " *\\\\", line)
+               m3 = re.match("[\t ]*" + uri + " *\\\\", line)
+               m4 = re.match("([\t ]*)" + uri + " *\"", line)
+
+               # patch on a single SRC_URI line:
+               if m1:
+                   return
+               # patch is on the first SRC_URI line
+               elif m2:
+                   temp_recipe.write(m2.group(1) + "\\\n")
+               # patch is in the middle
+               elif m3:
+                   return
+               # patch is last in list
+               elif m4:
+                   temp_recipe.write(m4.group(1) + "\"\n")
+               # nothing matched in recipe but we deleted the patch
+               # anyway? Then we must bail out!
+               else:
+                   removed = False
+
+        _remove(self.env, self.recipe_dir)
+
+        return removed
 
     def _remove_faulty_patch(self, patch_log):
         patch_file = None
@@ -343,6 +321,14 @@ class Recipe(object):
         return False
 
     def _license_issue_handled(self, config_log):
+        @modify_recipe_files
+        def _update_license_checksum(line, temp_recipe):
+            m = re.match("(.*)" + old_md5 + "(.*)", line)
+            if m is not None:
+                temp_recipe.write(m.group(1) + new_md5 + m.group(2) + "\n")
+            else:
+                temp_recipe.write(line)
+
         license_file = None
         with open(config_log) as log:
             for line in log:
@@ -368,8 +354,11 @@ class Recipe(object):
                     new_md5 = m_new.group(1)
         
         if license_file is not None:
+            _update_license_checksum(self.env, self.recipe_dir)
+
             self.create_diff_file(license_file, old_md5, new_md5)
             self.license_diff_file = os.path.join(self.workdir, os.path.basename(license_file + ".diff"))
+
             if self.interactive:
                 W("  %s: license checksum failed for file %s. The recipe has"
                   "been updated! View diff? (Y/n)" % (self.env['PN'], license_file))
@@ -492,48 +481,46 @@ class Recipe(object):
                 replacement = "${" + prefixes[largest_prefix] + "}"
                 files[i] = files[i].replace(largest_prefix, replacement)
 
-        recipe_files = [
-            os.path.join(self.recipe_dir, self.env['PN'] + ".inc"),
-            self.env['FILE']]
 
-        # Append the new files
-        for recipe_filename in recipe_files:
-            if os.path.isfile(recipe_filename):
-                with open(recipe_filename + ".tmp", "w+") as temp_recipe:
-                    with open(recipe_filename) as recipe:
-                        files_clause = False
-                        for line in recipe:
-                            if re.match("^FILES_\${PN}[ +=].*", line):
-                                files_clause = True
-                                temp_recipe.write(line)
-                                continue
-                            # Get front spacing
-                            if files_clause:
-                                front_spacing = re.sub("[^ \t]", "", line)
-                            # Append once the last line has of FILES has been reached
-                            if re.match(".*\".*", line) and files_clause:
-                                files_clause = False
-                                line = line.replace("\"", "")
-                                line = line.rstrip()
-                                front_spacing = re.sub("[^ \t]", "", line)
-                                # Do not write an empty line
-                                if line.strip():
-                                    temp_recipe.write(line + " \\\n")
-                                # Add spacing in case there was none
-                                if len(front_spacing) == 0:
-                                    front_spacing = " " * 8
-                                # Write to file
-                                for i in range(len(files)-1):
-                                    line = front_spacing + files[i] + " \\\n"
-                                    temp_recipe.write(line)
-
-                                line = front_spacing + files[len(files) - 1] + "\"\n"
-                                temp_recipe.write(line)
-                                continue
-
-                            temp_recipe.write(line)
-
-                os.rename(recipe_filename + ".tmp", recipe_filename)
+        files_clause = False
+        @modify_recipe_files
+        def _append_new_files(line, temp_file):
+            if re.match("^FILES_\${PN}[ +=].*", line):
+                files_clause = True
+                temp_recipe.write(line)
+                return
+
+            # Get front spacing
+            if files_clause:
+                front_spacing = re.sub("[^ \t]", "", line)
+
+            # Append once the last line has of FILES has been reached
+            if re.match(".*\".*", line) and files_clause:
+                files_clause = False
+                line = line.replace("\"", "")
+                line = line.rstrip()
+                front_spacing = re.sub("[^ \t]", "", line)
+
+                # Do not write an empty line
+                if line.strip():
+                    temp_recipe.write(line + " \\\n")
+
+                # Add spacing in case there was none
+                if len(front_spacing) == 0:
+                    front_spacing = " " * 8
+
+                # Write to file
+                for i in range(len(files) - 1):
+                    line = front_spacing + files[i] + " \\\n"
+                    temp_recipe.write(line)
+
+                line = front_spacing + files[len(files) - 1] + "\"\n"
+                temp_recipe.write(line)
+                return
+
+            temp_recipe.write(line)
+
+        _append_new_files(self.env, self.recipe_dir)
 
     def unpack(self):
         self.bb.unpack(self.env['PN'])
-- 
2.1.4


