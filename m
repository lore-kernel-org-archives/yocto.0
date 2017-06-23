Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33F33E00BF3; Fri, 23 Jun 2017 00:45:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D81A1E00BAF
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:45:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5N7jKbj018222
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 23 Jun 2017 00:45:20 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 23 Jun 2017 00:45:18 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Fri, 23 Jun 2017 00:45:05 -0700
Message-ID: <611db697aeab40156fe34f58ed318b4c21162d52.1498203770.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1498203770.git.liezhi.yang@windriver.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: [layerindex-web][PATCH V5 06/10] update.py: update layers orderly
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
X-List-Received-Date: Fri, 23 Jun 2017 07:45:22 -0000
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
Make update.py pass layers orderly to update_layer.py according to dependencies
can fix the problem, we can get intial dependencies from tinfoil, add an option
"-i, --initial" to update_layer.py to get them.

Not only new branch, but also existing branches may have the problem, because
collections and dependencies maybe changed in the coming update, so we can't
trust database when the layer is going to be updated, for example, if there are
10 layers in database, and 3 of them will be updated (-l layer1,layer2,layer3),
then we can not use the 3 layers' collections data from database, we need get
them from tinfoil.

* Performance improvement:
  It should be the same as before in theory, I have tested it with 97 layers:
  - Before: 11m6.472s, but only 75 layers were added, 22 ones were failed, I
    have to re-run update.py again and again (maybe 4 times to make all of
    them added). So:
    (11 * 60 + 6)/75*97/60 = 14m35s

  - Now 12m10.350s, all the layers are added in the first run.

   So about 2 minutes are saved.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py       | 113 ++++++++++++++++++++++++++++++---------------
 layerindex/update_layer.py |  10 +++-
 layerindex/utils.py        |  41 ++++++++++++++++
 3 files changed, 127 insertions(+), 37 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 1a0bbd0..f8e5a37 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -18,6 +18,8 @@ import signal
 from datetime import datetime, timedelta
 from distutils.version import LooseVersion
 import utils
+import operator
+import re
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -62,15 +64,13 @@ def run_command_interruptible(cmd):
     return process.returncode, buf
 
 
-def prepare_update_layer_command(options, branch, layer, updatedeps=False):
+def prepare_update_layer_command(options, branch, layer, initial=False):
     """Prepare the update_layer.py command line"""
     if branch.update_environment:
         cmdprefix = branch.update_environment.get_command()
     else:
         cmdprefix = 'python3'
     cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch.name)
-    if updatedeps:
-        cmd += ' --update-dependencies'
     if options.reload:
         cmd += ' --reload'
     if options.fullreload:
@@ -79,6 +79,8 @@ def prepare_update_layer_command(options, branch, layer, updatedeps=False):
         cmd += ' --nocheckout'
     if options.dryrun:
         cmd += ' -n'
+    if initial:
+        cmd += ' -i'
     if options.loglevel == logging.DEBUG:
         cmd += ' -d'
     elif options.loglevel == logging.ERROR:
@@ -191,6 +193,13 @@ def main():
         logger.error("Please set LAYER_FETCH_DIR in settings.py")
         sys.exit(1)
 
+
+    # We deliberately exclude status == 'X' ("no update") here
+    layerquery_all = LayerItem.objects.filter(classic=False).filter(status='P')
+    if layerquery_all.count() == 0:
+        logger.info("No published layers to update")
+        sys.exit(1)
+
     # For -a option to update bitbake branch
     update_bitbake = False
     if options.layers:
@@ -205,11 +214,7 @@ def main():
                 sys.exit(1)
         layerquery = LayerItem.objects.filter(classic=False).filter(name__in=layers)
     else:
-        # We deliberately exclude status == 'X' ("no update") here
-        layerquery = LayerItem.objects.filter(classic=False).filter(status='P')
-        if layerquery.count() == 0:
-            logger.info("No published layers to update")
-            sys.exit(1)
+        layerquery = layerquery_all
         update_bitbake = True
 
     if options.actual_branch:
@@ -286,8 +291,72 @@ def main():
             # they never get used during normal operation).
             last_rev = {}
             for branch in branches:
+                # If layer_A depends(or recommends) on layer_B, add layer_B before layer_A
+                deps_dict_all = {}
+                layerquery_sorted = []
+                collections_done = set()
                 branchobj = utils.get_branch(branch)
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
+                    cmd = prepare_update_layer_command(options, branchobj, layer, initial=True)
+                    logger.debug('Running layer update command: %s' % cmd)
+                    ret, output = run_command_interruptible(cmd)
+                    logger.debug('output: %s' % output)
+                    if ret != 0:
+                        continue
+                    col = re.search("^BBFILE_COLLECTIONS = \"(.*)\"", output, re.M).group(1) or ''
+                    ver = re.search("^LAYERVERSION = \"(.*)\"", output, re.M).group(1) or ''
+                    deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
+                    recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
+
+                    deps_dict = utils.explode_dep_versions2(bitbakepath, deps + ' ' + recs)
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
 
@@ -304,9 +373,6 @@ def main():
                                 layerupdate.save()
                         continue
 
-                    urldir = layer.get_fetch_dir()
-                    repodir = os.path.join(fetchdir, urldir)
-
                     cmd = prepare_update_layer_command(options, branchobj, layer)
                     logger.debug('Running layer update command: %s' % cmd)
                     layerupdate.started = datetime.now()
@@ -327,31 +393,6 @@ def main():
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
 
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index bcf7056..7b945e7 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -188,6 +188,9 @@ def main():
     parser.add_option("", "--nocheckout",
             help = "Don't check out branches",
             action="store_true", dest="nocheckout")
+    parser.add_option("-i", "--initial",
+            help = "Print initial values parsed from layer.conf only",
+            action="store_true")
     parser.add_option("-d", "--debug",
             help = "Enable debug output",
             action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
@@ -336,7 +339,7 @@ def main():
             layerdistros = Distro.objects.filter(layerbranch=layerbranch)
             layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
             layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
-            if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
+            if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload or options.initial:
                 # Check out appropriate branch
                 if not options.nocheckout:
                     utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
@@ -361,6 +364,11 @@ def main():
                     layerconfparser.shutdown()
                     sys.exit(1)
                 utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
+                if options.initial:
+                    # Use print() rather than logger.info() since "-q" makes it print nothing.
+                    for i in ["BBFILE_COLLECTIONS", "LAYERVERSION", "LAYERDEPENDS", "LAYERRECOMMENDS"]:
+                        print('%s = "%s"' % (i, utils.get_layer_var(layer_config_data, i, logger)))
+                    sys.exit(0)
                 utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
                 utils.add_recommends(layerbranch, layer_config_data, logger=logger)
                 layerbranch.save()
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 5acf35f..46227b8 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -27,6 +27,40 @@ def get_layer(layername):
         return res[0]
     return None
 
+def get_layer_var(config_data, var, logger):
+    collection = config_data.getVar('BBFILE_COLLECTIONS', True)
+    if collection:
+        collection = collection.strip()
+        collection_list = collection.split()
+        collection = collection_list[0]
+        layerdir = config_data.getVar('LAYERDIR', True)
+        if len(collection_list) > 1:
+            logger.warn('%s: multiple collections found, handling first one (%s) only' % (layerdir, collection))
+        if var == 'BBFILE_COLLECTIONS':
+            return collection
+    value = config_data.getVar('%s_%s' % (var, collection), True)
+    if not value:
+        value = config_data.getVar(var, True)
+    return value or ''
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
 
@@ -162,6 +196,13 @@ def setup_tinfoil(bitbakepath, enable_tracking):
 
     return tinfoil
 
+def explode_dep_versions2(bitbakepath, deps):
+    bblib = bitbakepath + '/lib'
+    if not bblib in sys.path:
+        sys.path.insert(0, bblib)
+    import bb.utils
+    return bb.utils.explode_dep_versions2(deps)
+
 def checkout_layer_branch(layerbranch, repodir, logger=None):
 
     branchname = layerbranch.branch.name
-- 
2.10.2


