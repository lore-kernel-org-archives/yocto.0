Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEA8DE00D50; Wed,  8 Jun 2016 06:21:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92BE1E00D20
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824134036"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:04 +1200
Message-Id: <2c57bee821315fe0847f8a9f9ad40ca7ca663363.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 11/15] update_layer.py: fix handling of renames with newer GitPython
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:51 -0000

Newer versions of GitPython implement rename detection, which means that
such changes don't show up as adds and deletes anymore and you get a
bunch of ENOENT errors for renamed files. Add some code to explicitly
look for renames and process them appropriately.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 78 ++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 3 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index ac4ae1e..bda79cb 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -17,6 +17,7 @@ import re
 import tempfile
 import shutil
 from distutils.version import LooseVersion
+import itertools
 import utils
 import recipeparse
 
@@ -325,7 +326,79 @@ def main():
                     subdir_start = ""
 
                 updatedrecipes = set()
-                for diffitem in diff.iter_change_type('D'):
+                dirtyrecipes = set()
+                other_deletes = []
+                other_adds = []
+                for diffitem in diff.iter_change_type('R'):
+                    oldpath = diffitem.a_blob.path
+                    newpath = diffitem.b_blob.path
+                    skip = False
+                    for removedir in removedirs:
+                        # FIXME what about files moved into removedirs?
+                        if oldpath.startswith(removedir):
+                            skip = True
+                            break
+                    if skip:
+                        continue
+                    if oldpath.startswith(subdir_start):
+                        (oldtypename, oldfilepath, oldfilename) = recipeparse.detect_file_type(oldpath, subdir_start)
+                        (newtypename, newfilepath, newfilename) = recipeparse.detect_file_type(newpath, subdir_start)
+                        if oldtypename != newtypename:
+                            # This is most likely to be a .inc file renamed to a .bb - and since
+                            # there may be another recipe deleted at the same time we probably want
+                            # to consider that, so just treat it as a delete and an add
+                            logger.debug("Treating rename of %s to %s as a delete and add (since type changed)" % (oldpath, newpath))
+                            other_deletes.append(diffitem)
+                            other_adds.append(diffitem)
+                        elif oldtypename == 'recipe':
+                            results = layerrecipes.filter(filepath=oldfilepath).filter(filename=oldfilename)
+                            if len(results):
+                                recipe = results[0]
+                                logger.debug("Rename recipe %s to %s" % (recipe, newpath))
+                                recipe.filepath = newfilepath
+                                recipe.filename = newfilename
+                                recipe.save()
+                                update_recipe_file(config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir)
+                                updatedrecipes.add(os.path.join(oldfilepath, oldfilename))
+                                updatedrecipes.add(os.path.join(newfilepath, newfilename))
+                            else:
+                                logger.warn("Renamed recipe %s could not be found" % oldpath)
+                                other_adds.append(diffitem)
+                        elif oldtypename == 'bbappend':
+                            results = layerappends.filter(filepath=oldfilepath).filter(filename=oldfilename)
+                            if len(results):
+                                logger.debug("Rename bbappend %s to %s" % (results[0], newfilepath))
+                                results[0].filepath = newfilepath
+                                results[0].filename = newfilename
+                                results[0].save()
+                            else:
+                                logger.warn("Renamed bbappend %s could not be found" % oldpath)
+                                other_adds.append(diffitem)
+                        elif oldtypename == 'machine':
+                            results = layermachines.filter(name=oldfilename)
+                            if len(results):
+                                logger.debug("Rename machine %s to %s" % (results[0], newfilename))
+                                results[0].name = newfilename
+                                results[0].save()
+                            else:
+                                logger.warn("Renamed machine %s could not be found" % oldpath)
+                                other_adds.append(diffitem)
+                        elif oldtypename == 'bbclass':
+                            results = layerclasses.filter(name=oldfilename)
+                            if len(results):
+                                logger.debug("Rename class %s to %s" % (results[0], newfilename))
+                                results[0].name = newfilename
+                                results[0].save()
+                            else:
+                                logger.warn("Renamed class %s could not be found" % oldpath)
+                                other_adds.append(diffitem)
+
+                        deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=oldpath)
+                        for dep in deps:
+                            dirtyrecipes.add(dep.recipe)
+
+
+                for diffitem in itertools.chain(diff.iter_change_type('D'), other_deletes):
                     path = diffitem.a_blob.path
                     if path.startswith(subdir_start):
                         skip = False
@@ -351,7 +424,7 @@ def main():
                         elif typename == 'bbclass':
                             layerclasses.filter(name=filename).delete()
 
-                for diffitem in diff.iter_change_type('A'):
+                for diffitem in itertools.chain(diff.iter_change_type('A'), other_adds):
                     path = diffitem.b_blob.path
                     if path.startswith(subdir_start):
                         skip = False
@@ -384,7 +457,6 @@ def main():
                             bbclass.name = filename
                             bbclass.save()
 
-                dirtyrecipes = set()
                 for diffitem in diff.iter_change_type('M'):
                     path = diffitem.a_blob.path
                     if path.startswith(subdir_start):
-- 
2.5.5


