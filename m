Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 372EBE0056D; Thu, 23 Aug 2018 22:00:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB7FE00777
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 22:00:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2018 22:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,281,1531810800"; d="scan'208";a="84510846"
Received: from pradhand-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.140.136])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2018 22:00:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2018 16:59:52 +1200
Message-Id: <f82f5f2754dd2d41db8d62f455dd380c26635ee1.1535086706.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1535086706.git.paul.eggleton@linux.intel.com>
References: <cover.1535086706.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] update: add option to stop immediately on parse errors
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
X-List-Received-Date: Fri, 24 Aug 2018 05:00:21 -0000

During debugging a parsing issue, we don't really want to continue if a
parsing error occurs, and in that situation I usually end up using
Ctrl+C to exit early. Add an option to exit immediately upon error to
avoid having to do that.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py       |  8 ++++++++
 layerindex/update_layer.py | 39 +++++++++++++++++++++++---------------
 2 files changed, 32 insertions(+), 15 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index aea7cd09..1b2bb153 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -57,6 +57,8 @@ def prepare_update_layer_command(options, branch, layer, initial=False):
         cmd += ' -q'
     if options.keep_temp:
         cmd += ' --keep-temp'
+    if options.stop_on_error:
+        cmd += ' --stop-on-error'
     return cmd
 
 def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake, bitbakepath):
@@ -159,6 +161,9 @@ def main():
     parser.add_option("", "--nocheckout",
             help = "Don't check out branches",
             action="store_true", dest="nocheckout")
+    parser.add_option("", "--stop-on-error",
+            help = "Stop on first parsing error",
+            action="store_true", default=False, dest="stop_on_error")
     parser.add_option("-a", "--actual-branch",
             help = "Update actual branch for layer and bitbake",
             action="store", dest="actual_branch", default='')
@@ -528,6 +533,9 @@ def main():
                         # Interrupted by user, break out of loop
                         logger.info('Update interrupted, exiting')
                         sys.exit(254)
+                    if options.stop_on_error and ret != 0:
+                        logger.info('Layer update failed with --stop-on-error, stopping')
+                        sys.exit(1)
             if failed_layers:
                 for branch, err_msg_list in failed_layers.items():
                     if err_msg_list:
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index d9c93360..eb04fc44 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -57,7 +57,7 @@ def split_recipe_fn(path):
 
 patch_status_re = re.compile(r"^[\t ]*(Upstream[-_ ]Status:?)[\t ]*(\w+)([\t ]+.*)?", re.IGNORECASE | re.MULTILINE)
 
-def collect_patch(recipe, patchfn, layerdir_start):
+def collect_patch(recipe, patchfn, layerdir_start, stop_on_error):
     from django.db import DatabaseError
     from layerindex.models import Patch
 
@@ -93,10 +93,13 @@ def collect_patch(recipe, patchfn, layerdir_start):
     except DatabaseError:
         raise
     except Exception as e:
-        logger.error("Unable to read patch %s: %s", patchfn, str(e))
-        patchrec.save()
+        if stop_on_error:
+            raise
+        else:
+            logger.error("Unable to read patch %s: %s", patchfn, str(e))
+            patchrec.save()
 
-def collect_patches(recipe, envdata, layerdir_start):
+def collect_patches(recipe, envdata, layerdir_start, stop_on_error):
     from layerindex.models import Patch
 
     try:
@@ -111,9 +114,9 @@ def collect_patches(recipe, envdata, layerdir_start):
         if not patch.startswith(layerdir_start):
             # Likely a remote patch, skip it
             continue
-        collect_patch(recipe, patch, layerdir_start)
+        collect_patch(recipe, patch, layerdir_start, stop_on_error)
 
-def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir, skip_patches=False):
+def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir, stop_on_error, skip_patches=False):
     from django.db import DatabaseError
 
     fn = str(os.path.join(path, recipe.filename))
@@ -197,7 +200,7 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir, ski
 
         if not skip_patches:
             # Handle patches
-            collect_patches(recipe, envdata, layerdir_start)
+            collect_patches(recipe, envdata, layerdir_start, stop_on_error)
 
         # Get file dependencies within this layer
         deps = envdata.getVar('__depends', True)
@@ -235,9 +238,12 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir, ski
     except DatabaseError:
         raise
     except BaseException as e:
-        if not recipe.pn:
-            recipe.pn = recipe.filename[:-3].split('_')[0]
-        logger.error("Unable to read %s: %s", fn, str(e))
+        if stop_on_error:
+            raise
+        else:
+            if not recipe.pn:
+                recipe.pn = recipe.filename[:-3].split('_')[0]
+            logger.error("Unable to read %s: %s", fn, str(e))
 
 def update_machine_conf_file(path, machine):
     logger.debug('Updating machine %s' % path)
@@ -304,6 +310,9 @@ def main():
     parser.add_option("", "--nocheckout",
             help = "Don't check out branches",
             action="store_true", dest="nocheckout")
+    parser.add_option("", "--stop-on-error",
+            help = "Stop on first parsing error",
+            action="store_true", default=False, dest="stop_on_error")
     parser.add_option("-i", "--initial",
             help = "Print initial values parsed from layer.conf only",
             action="store_true")
@@ -523,7 +532,7 @@ def main():
                                     recipe.filepath = newfilepath
                                     recipe.filename = newfilename
                                     recipe.save()
-                                    update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir, skip_patches)
+                                    update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir, options.stop_on_error, skip_patches)
                                     updatedrecipes.add(os.path.join(oldfilepath, oldfilename))
                                     updatedrecipes.add(os.path.join(newfilepath, newfilename))
                                 else:
@@ -655,7 +664,7 @@ def main():
                                 results = layerrecipes.filter(filepath=filepath).filter(filename=filename)[:1]
                                 if results:
                                     recipe = results[0]
-                                    update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir, skip_patches)
+                                    update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir, options.stop_on_error, skip_patches)
                                     recipe.save()
                                     updatedrecipes.add(recipe.full_path())
                             elif typename == 'machine':
@@ -677,7 +686,7 @@ def main():
 
                     for recipe in dirtyrecipes:
                         if not recipe.full_path() in updatedrecipes:
-                            update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir, skip_patches)
+                            update_recipe_file(tinfoil, config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir, options.stop_on_error, skip_patches)
                 else:
                     # Collect recipe data from scratch
 
@@ -708,7 +717,7 @@ def main():
                                 # Recipe still exists, update it
                                 results = layerrecipes.filter(id=v['id'])[:1]
                                 recipe = results[0]
-                                update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, repodir, skip_patches)
+                                update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, repodir, options.stop_on_error, skip_patches)
                             else:
                                 # Recipe no longer exists, mark it for later on
                                 layerrecipes_delete.append(v)
@@ -777,7 +786,7 @@ def main():
                     recipe.filename = os.path.basename(added)
                     root = os.path.dirname(added)
                     recipe.filepath = os.path.relpath(root, layerdir)
-                    update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, repodir, skip_patches)
+                    update_recipe_file(tinfoil, config_data_copy, root, recipe, layerdir_start, repodir, options.stop_on_error, skip_patches)
                     recipe.save()
 
                 for deleted in layerrecipes_delete:
-- 
2.17.1


