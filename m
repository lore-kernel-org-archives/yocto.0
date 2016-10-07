Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01702E00C69; Fri,  7 Oct 2016 08:57:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D47E5E00C60
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvWrU018875
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:32 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:31 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:17 -0400
Message-ID: <1475855841-30009-9-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 08/12] layerindex: Detect dependencies from layer.conf files
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:35 -0000
Content-Type: text/plain

Read dependencies from layer.conf and try to create the LayerDependency
entry by looking up the correct database object.  Dependencies are found
by layer name only - no collection support.  layer.conf parsing is
handled by the bitbake code.

Once all layers are added, the dependencies have to be rechecked in case
the layers are not added in order.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/layerconfparse.py     | 50 ++++++++++++++++++++++++
 layerindex/tools/import_layer.py | 11 ++++++
 layerindex/update.py             | 41 +++++++++++++++++++-
 layerindex/update_layer.py       | 20 ++++++----
 layerindex/utils.py              | 82 ++++++++++++++++++++++++++++++++++++++++
 5 files changed, 196 insertions(+), 8 deletions(-)
 create mode 100644 layerindex/layerconfparse.py

diff --git a/layerindex/layerconfparse.py b/layerindex/layerconfparse.py
new file mode 100644
index 0000000..3a453bd
--- /dev/null
+++ b/layerindex/layerconfparse.py
@@ -0,0 +1,50 @@
+# Utility functions for parsing layer.conf using bitbake within layerindex-web
+#
+# Copyright (C) 2016 Wind River Systems
+# Author: Liam R. Howlett <liam.howlett@windriver.com>
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+#
+
+import sys
+import os
+import os.path
+import utils
+import tempfile
+import re
+
+class LayerConfParse:
+    def __init__(self, enable_tracking=False, logger=None, bitbakepath=None, tinfoil=None):
+        import settings
+        self.logger = logger
+
+        if not bitbakepath:
+            fetchdir = settings.LAYER_FETCH_DIR
+            bitbakepath = os.path.join(fetchdir, 'bitbake')
+        self.bbpath = bitbakepath
+
+        # Set up BBPATH.
+        os.environ['BBPATH'] = str("%s" % self.bbpath)
+        self.tinfoil = tinfoil
+
+        if not self.tinfoil:
+            self.tinfoil = utils.setup_tinfoil(self.bbpath, enable_tracking)
+
+        self.config_data_copy = bb.data.createCopy(self.tinfoil.config_data)
+
+    def parse_layer(self, layerbranch, layerdir):
+
+        utils.checkout_layer_branch(layerbranch, layerdir, self.logger)
+
+
+        # This is not a valid layer, parsing will cause exception.
+        if not utils.is_layer_valid(layerdir):
+            return None
+
+        utils.parse_layer_conf(layerdir, self.config_data_copy, logger=self.logger)
+        return self.config_data_copy
+
+    def shutdown(self):
+        self.tinfoil.shutdown()
+
+
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 184c5cc..1daaeb2 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -19,6 +19,7 @@ import glob
 import utils
 import logging
 import subprocess
+from layerconfparse import LayerConfParse
 
 class DryRunRollbackException(Exception):
     pass
@@ -367,11 +368,21 @@ def main():
                 if layer.name != settings.CORE_LAYER_NAME:
                     if not core_layer:
                         core_layer = utils.get_layer(settings.CORE_LAYER_NAME)
+
                     if core_layer:
+                        logger.debug('Adding dep %s to %s' % (core_layer.name, layer.name))
                         layerdep = LayerDependency()
                         layerdep.layerbranch = layerbranch
                         layerdep.dependency = core_layer
                         layerdep.save()
+                    try:
+                        layerconfparser = LayerConfParse(logger=logger)
+                        config_data = layerconfparser.parse_layer(layerbranch, layerdir)
+                    finally:
+                        layerconfparser.shutdown()
+                    if config_data:
+                        utils.add_dependencies(layerbranch, config_data, logger=logger)
+
 
                 # Get some extra meta-information
                 readme_files = glob.glob(os.path.join(layerdir, 'README*'))
diff --git a/layerindex/update.py b/layerindex/update.py
index 423eb53..8684d36 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -16,6 +16,7 @@ import subprocess
 import signal
 from distutils.version import LooseVersion
 import utils
+from layerconfparse import LayerConfParse
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -92,7 +93,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import Branch, LayerItem
+    from layerindex.models import Branch, LayerItem, LayerDependency
 
     logger.setLevel(options.loglevel)
 
@@ -169,6 +170,7 @@ def main():
         # We now do this by calling out to a separate script; doing otherwise turned out to be
         # unreliable due to leaking memory (we're using bitbake internals in a manner in which
         # they never get used during normal operation).
+        last_rev = {}
         for branch in branches:
             for layer in layerquery:
                 if layer.vcs_url in failedrepos:
@@ -178,6 +180,10 @@ def main():
                 repodir = os.path.join(fetchdir, urldir)
 
                 branchobj = utils.get_branch(branch)
+                layerbranch = layer.get_layerbranch(branch)
+                if layerbranch:
+                    last_rev[layerbranch] = layerbranch.vcs_last_rev
+
                 if branchobj.update_environment:
                     cmdprefix = branchobj.update_environment.get_command()
                 else:
@@ -201,6 +207,39 @@ def main():
                     # Interrupted by user, break out of loop
                     break
 
+        # Since update_layer may not be called in the correct order to have the
+        # dependencies created before trying to link them, we now have to loop
+        # back through all the branches and layers and try to link in the
+        # dependencies that may have been missed.  Note that creating the
+        # dependencies is a best-effort and continues if they are not found.
+        for branch in branches:
+            try:
+                layerconfparser = LayerConfParse(logger=logger, bitbakepath=bitbakepath)
+                for layer in layerquery:
+
+                    layerbranch = layer.get_layerbranch(branch)
+                    # Skip layers that did not change.
+                    if layerbranch and last_rev[layerbranch] == layerbranch.vcs_last_rev:
+                        continue
+
+                    urldir = layer.get_fetch_dir()
+                    repodir = os.path.join(fetchdir, urldir)
+
+                    layerbranch = layer.get_layerbranch(branch)
+                    if not layerbranch:
+                        continue
+
+                    config_data = layerconfparser.parse_layer(layerbranch, repodir)
+                    if not config_data:
+                        logger.debug("Layer %s does not appear to have branch %s" % (layer.name, branch))
+                        continue
+
+                    utils.add_dependencies(layerbranch, config_data, logger=logger)
+            finally:
+                layerconfparser.shutdown()
+
+
+
     finally:
         utils.unlock_file(lockfile)
 
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 3f50547..addeb4c 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -196,7 +196,6 @@ def main():
     except recipeparse.RecipeParseError as e:
         logger.error(str(e))
         sys.exit(1)
-
     # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
     tinfoil.config_data.setVar('SUMMARY', '')
     # Clear the default value of DESCRIPTION so that we can see where it's not set
@@ -244,7 +243,7 @@ def main():
                 layerbranch = LayerBranch()
                 layerbranch.layer = layer
                 layerbranch.branch = branch
-                layerbranch_source = layer.get_layerbranch('master')
+                layerbranch_source = layer.get_layerbranch(branch)
                 if not layerbranch_source:
                     layerbranch_source = layer.get_layerbranch(None)
                 if layerbranch_source:
@@ -256,11 +255,6 @@ def main():
                         maintainer.id = None
                         maintainer.layerbranch = layerbranch
                         maintainer.save()
-                    for dep in layerbranch_source.dependencies_set.all():
-                        dep.pk = None
-                        dep.id = None
-                        dep.layerbranch = layerbranch
-                        dep.save()
 
             if layerbranch.vcs_subdir and not options.nocheckout:
                 # Find latest commit in subdirectory
@@ -280,6 +274,17 @@ def main():
 
             layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
             layerdir_start = os.path.normpath(layerdir) + os.sep
+
+            from layerconfparse import LayerConfParse
+            layerconfparser = LayerConfParse(logger=logger, tinfoil=tinfoil)
+            layer_config_data = layerconfparser.parse_layer(layerbranch, layerdir)
+            if not layer_config_data:
+                logger.info("Skipping update of layer %s for branch %s - conf/layer.conf may have parse issues" % (layer.name, branchdesc))
+                layerconfparser.shutdown()
+                sys.exit(1)
+            utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
+            layerbranch.save()
+
             layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
             layermachines = Machine.objects.filter(layerbranch=layerbranch)
             layerdistros = Distro.objects.filter(layerbranch=layerbranch)
@@ -655,6 +660,7 @@ def main():
         import traceback
         traceback.print_exc()
 
+    tinfoil.shutdown()
     shutil.rmtree(tempdir)
     sys.exit(0)
 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index b634ce6..018478e 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -27,6 +27,88 @@ def get_layer(layername):
         return res[0]
     return None
 
+def get_dependency_layer(depname, version_str=None, logger=None):
+    from layerindex.models import LayerItem, LayerBranch
+
+    # Get any LayerBranch with a layer that has a name that matches the depname
+    res = list(LayerBranch.objects.filter(layer__name=depname))
+
+    # Nothing found, return.
+    if not res:
+        return None
+
+    # If there is no version constraint, return the first one found.
+    if not version_str:
+        return res[0].layer
+
+    (operator, dep_version) = version_str.split()
+    for layerbranch in res:
+        layer_ver = layerbranch.version
+
+        # If there is no version in the found layer, then don't use this layer.
+        if not layer_ver:
+            continue
+
+        try:
+            success = bb.utils.vercmp_string_op(layer_ver, version_str, operator)
+        except bb.utils.VersionStringException as vse:
+            raise vse
+
+        if success:
+            return layerbranch.layer
+
+    return None
+
+def add_dependencies(layerbranch, config_data, logger=None):
+    _add_dependency("LAYERDEPENDS", 'dependency', layerbranch, config_data, logger)
+
+def _add_dependency(var, name, layerbranch, config_data, logger=None):
+    from layerindex.models import LayerBranch, LayerDependency
+
+    layer_name = layerbranch.layer.name
+    var_name = layer_name
+
+    dep_list = config_data.getVar("%s_%s" % (var, var_name), True)
+
+    if not dep_list:
+        return
+
+    try:
+        dep_dict = bb.utils.explode_dep_versions2(dep_list)
+    except bb.utils.VersionStringException as vse:
+        logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, layer_name, str(vse)))
+        return
+
+    for dep, ver_list in list(dep_dict.items()):
+        ver_str = None
+        if ver_list:
+            ver_str = ver_list[0]
+
+        try:
+            dep_layer = get_dependency_layer(dep, ver_str, logger)
+        except bb.utils.VersionStringException as vse:
+            if logger:
+                logger.error('Error getting %s %s for %s\n%s' %(name, dep. layer_name, str(vse)))
+            continue
+
+        if not dep_layer:
+            if logger:
+                logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
+                continue
+
+        # Skip existing entries.
+        existing = list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(dependency=dep_layer))
+        if existing:
+            logger.debug('Skipping %s - already a dependency for %s' % (dep, layer_name))
+            continue
+
+        if logger:
+            logger.debug('Adding %s %s to %s' % (name, dep_layer.name, layer_name))
+        layerdep = LayerDependency()
+        layerdep.layerbranch = layerbranch
+        layerdep.dependency = dep_layer
+        layerdep.save()
+
 def setup_tinfoil(bitbakepath, enable_tracking):
     sys.path.insert(0, bitbakepath + '/lib')
     import bb.tinfoil
-- 
1.9.1


