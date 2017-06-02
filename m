Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0C88E00B7D; Thu,  1 Jun 2017 23:28:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0E45E00B76
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 23:28:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v526StuN022063
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Jun 2017 23:28:55 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Jun 2017 23:28:55 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Jun 2017 23:28:43 -0700
Message-ID: <c67585f2d1de64be69fad566d92a95674e342861.1496384657.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1496384657.git.liezhi.yang@windriver.com>
References: <cover.1496384657.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V3 06/11] update.py: update layers orderly
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
X-List-Received-Date: Fri, 02 Jun 2017 06:28:56 -0000
Content-Type: text/plain

* Problems
The update.py couldn't handle new (not only new branch, in fact, but also
existing branches, see below for more info) branch well, for example, there are
3 layers: layer_A, layer_B and layer_C, and create new branch "branch_1" for
them, and they have depends:

layer_A -> layer_B -> layer_C

The "->" means depends on.

Then run "update.py -b branch_1", there would be errors like:

ERROR: Dependency layer_B of layer_A does not have branch record for branch branch_1

Though update.py runs "update_layer.py" twice, but it didn't help since
layerbranch was None when it was failed to create in the first run.

The reason is if update.py updates layer_A firstly, it would fail since it
can't find layer_B:branch_1 in database (not added to database yet), similarly,
if add layer_B before layer_C, it would also fail. Only layer_C can be added
(assume it has no dependencies). So we have to re-run update.py again and again
to make it work, here we may have to run update.py 3 times, and more runs are
needed if the dependency chain is longer.

* Solutions:
Make update.py pass layers to update_layer.py orderly can fix the problem, we
can get LAYERDEPENDS and LAYERRECOMMENDS info from tinfoil.

Not only new branch, but also existing branches may have the problem, because
BBFILE_COLLECTIONS maybe changed in the coming update, so we can't trust
database when the layer is going to be updated, for example, if there are 10
layers in database, and 3 of them will be updated (-l layer1,layer2,layer3),
then we can not use the 3 layers' collection data from database, we need get
them from info again, so the code doesn't check whether it is a new branch or
not.

* Performance Improvement:
  It should be faster than before in theory, since it ran update_layer.py
  twice in the past, but now only once, I have tested it with 76 layers:
  - Before: 4m25.912s, but only 30 layers were added, 46 ones were failed, I
    have to re-run update.py again and again (maybe 4 times to make all of
    them added). So:
    (4 * 60 + 25)/30*76/60 = 11.19m

  - Now 8m5.315s, all the layers are added in the first run.

  It improves from 11m to 8m.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py       | 116 +++++++++++++++++++++++++++++++++------------
 layerindex/update_layer.py |   3 +-
 layerindex/utils.py        |  39 +++++++++++++++
 3 files changed, 127 insertions(+), 31 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 54b9f87..45dcb86 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -18,6 +18,8 @@ import signal
 from datetime import datetime, timedelta
 from distutils.version import LooseVersion
 import utils
+import operator
+import recipeparse
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -151,6 +153,11 @@ def main():
         logger.error("Please set LAYER_FETCH_DIR in settings.py")
         sys.exit(1)
 
+    layerquery_all = LayerItem.objects.filter(classic=False).filter(status='P')
+    if layerquery_all.count() == 0:
+        logger.info("No published layers to update")
+        sys.exit(1)
+
     if options.layers:
         layers = options.layers.split(',')
         for layer in layers:
@@ -161,10 +168,7 @@ def main():
         layerquery = LayerItem.objects.filter(classic=False).filter(name__in=layers)
     else:
         # We deliberately exclude status == 'X' ("no update") here
-        layerquery = LayerItem.objects.filter(classic=False).filter(status='P')
-        if layerquery.count() == 0:
-            logger.info("No published layers to update")
-            sys.exit(1)
+        layerquery = layerquery_all
 
     if not os.path.exists(fetchdir):
         os.makedirs(fetchdir)
@@ -186,6 +190,7 @@ def main():
     try:
         lockfn = os.path.join(fetchdir, "layerindex.lock")
         lockfile = utils.lock_file(lockfn)
+        tinfoil = None
         if not lockfile:
             logger.error("Layer index lock timeout expired")
             sys.exit(1)
@@ -228,8 +233,85 @@ def main():
             # they never get used during normal operation).
             last_rev = {}
             for branch in branches:
+                # If layer_A depends(or recommends) on layer_B, add layer_B before layer_A
+                deps_dict_all = {}
+                layerquery_sorted = []
+                collections_done = set()
                 branchobj = utils.get_branch(branch)
+                try:
+                    utils.shutdown_tinfoil(tinfoil)
+                    (tinfoil, tempdir) = recipeparse.init_parser(settings, branchobj, bitbakepath, nocheckout=options.nocheckout, logger=logger)
+                except recipeparse.RecipeParseError as e:
+                    logger.error(str(e))
+                    sys.exit(1)
+                for layer in layerquery_all:
+                    # Get all collections from database, but we can't trust the
+                    # one which will be updated since its collections maybe
+                    # changed (different from database).
+                    if layer in layerquery:
+                        continue
+                    layerbranch = layer.get_layerbranch(branch)
+                    if layerbranch:
+                        collections_done.add((layerbranch.collection, layerbranch.version))
+
                 for layer in layerquery:
+                    errmsg = failedrepos.get(layer.vcs_url, '')
+                    if errmsg:
+                        continue
+                    config_data = utils.copy_tinfoil_data(tinfoil.config_data)
+                    layerbranch_source = layer.get_layerbranch(None)
+                    if not layerbranch_source:
+                        logger.error('Failed to get layerbranch_source for %s' % layer.name)
+                        sys.exit(1)
+                    urldir = layer.get_fetch_dir()
+                    repodir = os.path.join(fetchdir, urldir)
+                    layerdir = os.path.join(repodir, layerbranch_source.vcs_subdir)
+                    utils.parse_layer_conf(layerdir, config_data, logger=logger)
+
+                    deps = utils.get_layer_var(config_data, 'LAYERDEPENDS') or ''
+                    recs = utils.get_layer_var(config_data, 'LAYERRECOMMENDS') or ''
+                    col = (utils.get_layer_var(config_data, 'BBFILE_COLLECTIONS') or '').strip()
+                    ver = utils.get_layer_var(config_data, 'LAYERVERSION') or ''
+
+                    deps_dict = utils.explode_dep_versions2(deps + ' ' + recs)
+                    if len(deps_dict) == 0:
+                        # No depends, add it firstly
+                        layerquery_sorted.append(layer)
+                        collections_done.add((col, ver))
+                        continue
+                    deps_dict_all[layer] = {'requires': deps_dict, 'collection': col, 'version': ver}
+
+                # Move deps_dict_all to layerquery_sorted orderly
+                logger.info("Sorting layers for branch %s" % branch)
+                while True:
+                    deps_dict_all_copy = deps_dict_all.copy()
+                    for layer, value in deps_dict_all_copy.items():
+                        for req_col, req_ver_list in value['requires'].copy().items():
+                            matched = False
+                            if req_ver_list:
+                                req_ver = req_ver_list[0]
+                            else:
+                                req_ver = None
+                            if utils.is_deps_satisfied(req_col, req_ver, collections_done):
+                                del(value['requires'][req_col])
+                        if not value['requires']:
+                            # All the depends are in collections_done:
+                            del(deps_dict_all[layer])
+                            layerquery_sorted.append(layer)
+                            collections_done.add((value['collection'], value['version']))
+
+                    if not len(deps_dict_all):
+                        break
+
+                    # Something is wrong if nothing changed after a run
+                    if operator.eq(deps_dict_all_copy, deps_dict_all):
+                        logger.error("Cannot find required collections on branch %s:" % branch)
+                        for layer, value in deps_dict_all.items():
+                            logger.error('%s: %s' % (layer.name, value['requires']))
+                        logger.error("Known collections: %s" % collections_done)
+                        sys.exit(1)
+
+                for layer in layerquery_sorted:
                     layerupdate = LayerUpdate()
                     layerupdate.update = update
 
@@ -269,33 +351,9 @@ def main():
                     if ret == 254:
                         # Interrupted by user, break out of loop
                         break
-
-            # Since update_layer may not be called in the correct order to have the
-            # dependencies created before trying to link them, we now have to loop
-            # back through all the branches and layers and try to link in the
-            # dependencies that may have been missed.  Note that creating the
-            # dependencies is a best-effort and continues if they are not found.
-            for branch in branches:
-                branchobj = utils.get_branch(branch)
-                for layer in layerquery:
-                    layerbranch = layer.get_layerbranch(branch)
-                    if layerbranch:
-                        if not (options.reload or options.fullreload):
-                            # Skip layers that did not change.
-                            layer_last_rev = last_rev.get(layerbranch, None)
-                            if layer_last_rev is None or layer_last_rev == layerbranch.vcs_last_rev:
-                                continue
-
-                        logger.info('Updating layer dependencies for %s on branch %s' % (layer.name, branch))
-                        cmd = prepare_update_layer_command(options, branchobj, layer, updatedeps=True)
-                        logger.debug('Running update dependencies command: %s' % cmd)
-                        ret, output = run_command_interruptible(cmd)
-                        if ret == 254:
-                            # Interrupted by user, break out of loop
-                            break
-
         finally:
             utils.unlock_file(lockfile)
+            utils.shutdown_tinfoil(tinfoil)
 
     finally:
         update.log = ''.join(listhandler.read())
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index bcf7056..0373109 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -716,8 +716,7 @@ def main():
         import traceback
         traceback.print_exc()
     finally:
-        if LooseVersion(bb.__version__) > LooseVersion("1.27"):
-            tinfoil.shutdown()
+        utils.shutdown_tinfoil(tinfoil)
 
     shutil.rmtree(tempdir)
     sys.exit(0)
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 1a57c07..7887bae 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -27,6 +27,33 @@ def get_layer(layername):
         return res[0]
     return None
 
+def get_layer_var(config_data, var):
+    collection = config_data.getVar('BBFILE_COLLECTIONS', True)
+    if collection:
+        collection = collection.strip()
+    value = config_data.getVar('%s_%s' % (var, collection), True)
+    if not value:
+        value = config_data.getVar(var, True)
+    return value
+
+def is_deps_satisfied(req_col, req_ver, collections):
+    """ Check whether required collection and version are in collections"""
+    for existed_col, existed_ver in collections:
+        if req_col == existed_col:
+            # If there is no version constraint, return True when collection matches
+            if not req_ver:
+                return True
+            else:
+                # If there is no version in the found layer, then don't use this layer.
+                if not existed_ver:
+                    continue
+                (op, dep_version) = req_ver.split()
+                success = bb.utils.vercmp_string_op(existed_ver, dep_version, op)
+                if success:
+                    return True
+    # Return False when not found
+    return False
+
 def get_dependency_layer(depname, version_str=None, logger=None):
     from layerindex.models import LayerItem, LayerBranch
 
@@ -156,6 +183,18 @@ def setup_tinfoil(bitbakepath, enable_tracking):
 
     return tinfoil
 
+def shutdown_tinfoil(tinfoil):
+    if tinfoil and hasattr(tinfoil, 'shutdown'):
+        tinfoil.shutdown()
+
+def copy_tinfoil_data(config_data):
+    import bb.data
+    return bb.data.createCopy(config_data)
+
+def explode_dep_versions2(deps):
+    import bb.utils
+    return bb.utils.explode_dep_versions2(deps)
+
 def checkout_layer_branch(layerbranch, repodir, logger=None):
 
     branchname = layerbranch.branch.name
-- 
2.10.2


