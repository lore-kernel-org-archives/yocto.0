Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5EACE00AE6; Wed, 25 Nov 2015 16:00:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0A18E00985
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:06 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188950"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:05 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:35 -0600
Message-Id: <1448496046-13186-7-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 06/17] recipe/base.py: Add is_recipe_or_include_file func
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Instead of have duplicate code add this new function
for make code easy to read.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/recipe/base.py | 35 +++++++++++++++++------------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/modules/recipe/base.py b/modules/recipe/base.py
index 14aa5bb..15c5f43 100644
--- a/modules/recipe/base.py
+++ b/modules/recipe/base.py
@@ -33,6 +33,18 @@ from logging import warning as W
 from errors import *
 from utils.bitbake import *
 
+def is_recipe_or_include_file(full_path_f, f):
+    is_file = os.path.isfile(full_path_f)
+
+    is_recipe = f.find(self.env['PN']) == 0 and \
+                f.find(self.env['PKGV']) != -1 and \
+                f.find(".bb") != -1
+
+    is_include = f.find(self.env['PN']) == 0 and \
+                 f.find(".inc") != -1
+
+    return is_file and (is_recipe or is_include)
+
 class Recipe(object):
     def __init__(self, env, new_ver, interactive, workdir, recipe_dir, bitbake, git):
         self.env = env
@@ -63,6 +75,7 @@ class Recipe(object):
 
         super(Recipe, self).__init__()
 
+
     def update_env(self, env):
         self.env = env
 
@@ -80,10 +93,7 @@ class Recipe(object):
         # change PR before renaming
         for f in os.listdir(self.recipe_dir):
             full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+            if is_recipe_or_include_file(full_path_f, f):
                 with open(full_path_f + ".tmp", "w+") as temp_recipe:
                     with open(full_path_f) as recipe:
                         for line in recipe:
@@ -130,12 +140,7 @@ class Recipe(object):
 
         for f in os.listdir(self.recipe_dir):
             full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and
-                      f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and
-                      f.find(".inc") != -1)):
+            if is_recipe_or_include_file(full_path_f, f):
                 with open(full_path_f + ".tmp", "w+") as temp_recipe:
                     with open(full_path_f) as recipe:
                         for line in recipe:
@@ -178,10 +183,7 @@ class Recipe(object):
         # files... Go through the recipes/inc files until we find them
         for f in os.listdir(self.recipe_dir):
             full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+            if is_recipe_or_include_file(full_path_f, f):
                 with open(full_path_f + ".tmp", "w+") as temp_recipe:
                     with open(full_path_f) as recipe:
                         for line in recipe:
@@ -218,10 +220,7 @@ class Recipe(object):
         # Will change the extension of the archive from the SRC_URI
         for f in os.listdir(self.recipe_dir):
             full_path_f = os.path.join(self.recipe_dir, f)
-            if os.path.isfile(full_path_f) and \
-                    ((f.find(self.env['PN']) == 0 and f.find(self.env['PKGV']) != -1 and
-                      f.find(".bb") != -1) or
-                     (f.find(self.env['PN']) == 0 and f.find(".inc") != -1)):
+            if is_recipe_or_include_file(full_path_f, f):
                 with open(full_path_f + ".tmp", "w+") as temp_recipe:
                     with open(full_path_f) as recipe:
                         source_found = False
-- 
2.1.4


