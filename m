Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E938CE00CE9; Tue, 30 Aug 2016 14:05:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B69C1E00510
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:05:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Aug 2016 14:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,258,1470726000"; d="scan'208";a="1049368811"
Received: from ashuvini-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.135])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2016 14:04:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2016 09:03:31 +1200
Message-Id: <00bae9978dda09f859a26756263b8f38ea94edd4.1472590929.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] update_layer.py: fix up for bitbake API change
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
X-List-Received-Date: Tue, 30 Aug 2016 21:05:18 -0000

The multiconfig changes broke the calls here to loadDataFull(). To avoid
this being an issue in future, make use of tinfoil's new parse_recipe_file()
function (if available) to isolate the code here from any future changes to
bitbake's internal code.

Part of the fix for [YOCTO #10192].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/tools/import_classic.py | 11 +++++++----
 layerindex/update_layer.py         | 17 ++++++++++-------
 2 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/layerindex/tools/import_classic.py b/layerindex/tools/import_classic.py
index ee99246..45ccaa9 100755
--- a/layerindex/tools/import_classic.py
+++ b/layerindex/tools/import_classic.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Import OE-Classic recipe data into the layer index database
 #
@@ -27,11 +27,14 @@ import recipeparse
 logger = utils.logger_create('LayerIndexUpdate')
 
 
-def update_recipe_file(data, path, recipe, layerdir_start, repodir):
+def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
     fn = str(os.path.join(path, recipe.filename))
     try:
         logger.debug('Updating recipe %s' % fn)
-        envdata = bb.cache.Cache.loadDataFull(fn, [], data)
+        if hasattr(tinfoil, 'parse_recipe_file'):
+            envdata = tinfoil.parse_recipe_file(fn, appends=False, config_data=data)
+        else:
+            envdata = bb.cache.Cache.loadDataFull(fn, [], data)
         envdata.setVar('SRCPV', 'X')
         envdata.setVar('SRCDATE', 'X')
         envdata.setVar('SRCREV', 'X')
@@ -182,7 +185,7 @@ def main():
                     recipe.layerbranch = layerbranch
                     recipe.filename = filename
                     recipe.filepath = filepath
-                    update_recipe_file(config_data_copy, root, recipe, layerdir_start, oeclassicpath)
+                    update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, oeclassicpath)
                     recipe.save()
 
         layerbranch.vcs_last_fetch = datetime.now()
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index fd8d3d4..13b508f 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -54,11 +54,14 @@ def split_recipe_fn(path):
         pv = "1.0"
     return (pn, pv)
 
-def update_recipe_file(data, path, recipe, layerdir_start, repodir):
+def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir):
     fn = str(os.path.join(path, recipe.filename))
     try:
         logger.debug('Updating recipe %s' % fn)
-        envdata = bb.cache.Cache.loadDataFull(fn, [], data)
+        if hasattr(tinfoil, 'parse_recipe_file'):
+            envdata = tinfoil.parse_recipe_file(fn, appends=False, config_data=data)
+        else:
+            envdata = bb.cache.Cache.loadDataFull(fn, [], data)
         envdata.setVar('SRCPV', 'X')
         recipe.pn = envdata.getVar("PN", True)
         recipe.pv = envdata.getVar("PV", True)
@@ -356,7 +359,7 @@ def main():
                                     recipe.filepath = newfilepath
                                     recipe.filename = newfilename
                                     recipe.save()
-                                    update_recipe_file(config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir)
+                                    update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir)
                                     updatedrecipes.add(os.path.join(oldfilepath, oldfilename))
                                     updatedrecipes.add(os.path.join(newfilepath, newfilename))
                                 else:
@@ -471,7 +474,7 @@ def main():
                                 results = layerrecipes.filter(filepath=filepath).filter(filename=filename)[:1]
                                 if results:
                                     recipe = results[0]
-                                    update_recipe_file(config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir)
+                                    update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir)
                                     recipe.save()
                                     updatedrecipes.add(recipe.full_path())
                             elif typename == 'machine':
@@ -487,7 +490,7 @@ def main():
 
                     for recipe in dirtyrecipes:
                         if not recipe.full_path() in updatedrecipes:
-                            update_recipe_file(config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir)
+                            update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir)
                 else:
                     # Collect recipe data from scratch
 
@@ -513,7 +516,7 @@ def main():
                                 # Recipe still exists, update it
                                 results = layerrecipes.filter(id=v['id'])[:1]
                                 recipe = results[0]
-                                update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
+                                update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, repodir)
                             else:
                                 # Recipe no longer exists, mark it for later on
                                 layerrecipes_delete.append(v)
@@ -575,7 +578,7 @@ def main():
                     recipe.filename = os.path.basename(added)
                     root = os.path.dirname(added)
                     recipe.filepath = os.path.relpath(root, layerdir)
-                    update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
+                    update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, repodir)
                     recipe.save()
 
                 for deleted in layerrecipes_delete:
-- 
2.5.5


