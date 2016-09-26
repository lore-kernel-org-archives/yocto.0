Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C62EE0083D; Mon, 26 Sep 2016 11:25:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6267E007A2
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:25:55 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8QIPshJ027043
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 26 Sep 2016 11:25:54 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:54 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:35 -0400
Message-ID: <1474914338-26310-8-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 07/10] layerindex: Detect dependencies from layer.conf files
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
X-List-Received-Date: Mon, 26 Sep 2016 18:25:58 -0000
Content-Type: text/plain

Read dependencies from layer.conf and try to create the LayerDependency
entry by looking up the correct database object.  Dependencies are found
by layer name only - no collection support.  layer.conf parsing is
handled by the bitbake code.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/layerconfparse.py     |  39 ++++++++++++++
 layerindex/models.py             |   4 ++
 layerindex/recipeparse.py        |  31 ++---------
 layerindex/tools/import_layer.py |   8 +++
 layerindex/update.py             |  20 +++++++-
 layerindex/utils.py              | 108 +++++++++++++++++++++++++++++++++++++++
 6 files changed, 181 insertions(+), 29 deletions(-)
 create mode 100644 layerindex/layerconfparse.py

diff --git a/layerindex/layerconfparse.py b/layerindex/layerconfparse.py
new file mode 100644
index 0000000..19b390c
--- /dev/null
+++ b/layerindex/layerconfparse.py
@@ -0,0 +1,39 @@
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
+    def __init__(self, enable_tracking=False, logger=None, bitbakepath=None):
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
+        self.tinfoil = utils.setup_tinfoil(self.bbpath, enable_tracking)
+        self.config_data_copy = bb.data.createCopy(self.tinfoil.config_data)
+
+
+    def parse_layer(self, layerdir):
+        utils.parse_layer_conf(layerdir, self.config_data_copy)
+        return self.config_data_copy
+
+    def shutdown(self):
+        self.tinfoil.shutdown()
+
+
diff --git a/layerindex/models.py b/layerindex/models.py
index 6aec030..2db8818 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -209,6 +209,9 @@ class LayerBranch(models.Model):
         return "%s: %s" % (self.layer.name, self.branch.name)
 
 
+    def get_required(self):
+        return self.dependencies_set.filter(required=True)
+
 class LayerMaintainer(models.Model):
     MAINTAINER_STATUS_CHOICES = (
         ('A', 'Active'),
@@ -230,6 +233,7 @@ class LayerMaintainer(models.Model):
 class LayerDependency(models.Model):
     layerbranch = models.ForeignKey(LayerBranch, related_name='dependencies_set')
     dependency = models.ForeignKey(LayerItem, related_name='dependents_set')
+    required = models.BooleanField(default=True)
 
     class Meta:
         verbose_name_plural = "Layer dependencies"
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 61d6fd4..8a63117 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -20,31 +20,6 @@ class RecipeParseError(Exception):
     def __str__(self):
         return self.msg
 
-def _setup_tinfoil(bitbakepath, enable_tracking):
-    sys.path.insert(0, bitbakepath + '/lib')
-    import bb.tinfoil
-    import bb.cooker
-    import bb.data
-    try:
-        tinfoil = bb.tinfoil.Tinfoil(tracking=enable_tracking)
-    except TypeError:
-        # old API
-        tinfoil = bb.tinfoil.Tinfoil()
-        if enable_tracking:
-            tinfoil.cooker.enableDataTracking()
-    tinfoil.prepare(config_only = True)
-
-    return tinfoil
-
-def _parse_layer_conf(layerdir, data):
-    data.setVar('LAYERDIR', str(layerdir))
-    if hasattr(bb, "cookerdata"):
-        # Newer BitBake
-        data = bb.cookerdata.parse_config_file(os.path.join(layerdir, "conf", "layer.conf"), data)
-    else:
-        # Older BitBake (1.18 and below)
-        data = bb.cooker._parse(os.path.join(layerdir, "conf", "layer.conf"), data)
-    data.expandVarref('LAYERDIR')
 
 
 def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout=False, classic=False, logger=None):
@@ -97,7 +72,7 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
     tempdir = tempfile.mkdtemp(dir=settings.TEMP_BASE_DIR)
     os.chdir(tempdir)
 
-    tinfoil = _setup_tinfoil(bitbakepath, enable_tracking)
+    tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking)
 
     # Ensure TMPDIR exists (or insane.bbclass will blow up trying to write to the QA log)
     oe_tmpdir = tinfoil.config_data.getVar('TMPDIR', True)
@@ -125,7 +100,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch):
     # or across layers, but also because custom variable values might be
     # set in layer.conf.
     config_data_copy = bb.data.createCopy(config_data)
-    _parse_layer_conf(layerdir, config_data_copy)
+    utils.parse_layer_conf(layerdir, config_data_copy)
     for dep in layerbranch.dependencies_set.all():
         depurldir = dep.dependency.get_fetch_dir()
         deprepodir = os.path.join(fetchdir, depurldir)
@@ -133,7 +108,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch):
         if not deplayerbranch:
             raise RecipeParseError('Dependency %s of layer %s does not have branch record for branch %s' % (dep.dependency.name, layer.name, layerbranch.branch.name))
         deplayerdir = os.path.join(deprepodir, deplayerbranch.vcs_subdir)
-        _parse_layer_conf(deplayerdir, config_data_copy)
+        utils.parse_layer_conf(deplayerdir, config_data_copy)
     config_data_copy.delVar('LAYERDIR')
     return config_data_copy
 
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index f84fd85..0a13d21 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -19,6 +19,7 @@ import glob
 import utils
 import logging
 import subprocess
+from layerconfparse import LayerConfParse
 
 class DryRunRollbackException(Exception):
     pass
@@ -375,11 +376,18 @@ def main():
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
+                    layerconfparser = LayerConfParse(logger=logger)
+                    config_data = layerconfparser.parse_layer(layerdir)
+                    layerconfparser.shutdown()
+                    utils.add_dependencies(layerbranch, config_data, logger=logger)
+
 
                 # Get some extra meta-information
                 readme_files = glob.glob(os.path.join(layerdir, 'README*'))
diff --git a/layerindex/update.py b/layerindex/update.py
index 423eb53..ecd2380 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -16,6 +16,8 @@ import subprocess
 import signal
 from distutils.version import LooseVersion
 import utils
+from layerconfparse import LayerConfParse
+
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -92,7 +94,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import Branch, LayerItem
+    from layerindex.models import Branch, LayerItem, LayerDependency
 
     logger.setLevel(options.loglevel)
 
@@ -201,6 +203,22 @@ def main():
                     # Interrupted by user, break out of loop
                     break
 
+        # Once indexed, then conf/layer.conf dependencies should be reevaluated.
+        layerconfparser = LayerConfParse(logger=logger, bitbakepath=bitbakepath)
+        for branch in branches:
+            for layer in layerquery:
+                urldir = layer.get_fetch_dir()
+                repodir = os.path.join(fetchdir, urldir)
+
+                layerbranch = layer.get_layerbranch(branch)
+                if layerbranch.vcs_subdir:
+                    repodir = os.path.join(repodir, layerbranch.vcs_subdir)
+                config_data = layerconfparser.parse_layer(repodir)
+                utils.add_dependencies(layerbranch, config_data, logger=logger)
+
+        layerconfparser.shutdown()
+
+
     finally:
         utils.unlock_file(lockfile)
 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 23b81f5..f82f8c7 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -27,6 +27,114 @@ def get_layer(layername):
         return res[0]
     return None
 
+def get_dependency_layer(depname, version_str=None, logger=None):
+    from layerindex.models import LayerItem, LayerBranch
+
+    # Get any LayerBranch with a layer that has a name that matches the depname
+    res = list(LayerBranch.objects.filter(layer__name=depname))
+
+    # Nothing found, return.
+    if len(res) == 0:
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
+         return
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
+def setup_tinfoil(bitbakepath, enable_tracking):
+    sys.path.insert(0, bitbakepath + '/lib')
+    import bb.tinfoil
+    import bb.cooker
+    import bb.data
+    try:
+        tinfoil = bb.tinfoil.Tinfoil(tracking=enable_tracking)
+    except TypeError:
+        # old API
+        tinfoil = bb.tinfoil.Tinfoil()
+        if enable_tracking:
+            tinfoil.cooker.enableDataTracking()
+    tinfoil.prepare(config_only = True)
+
+    return tinfoil
+
+def parse_layer_conf(layerdir, data):
+    data.setVar('LAYERDIR', str(layerdir))
+    if hasattr(bb, "cookerdata"):
+        # Newer BitBake
+        data = bb.cookerdata.parse_config_file(os.path.join(layerdir, "conf", "layer.conf"), data)
+    else:
+        # Older BitBake (1.18 and below)
+        data = bb.cooker._parse(os.path.join(layerdir, "conf", "layer.conf"), data)
+    data.expandVarref('LAYERDIR')
+
 def runcmd(cmd, destdir=None, printerr=True, logger=None):
     """
         execute command, raise CalledProcessError if fail
-- 
1.9.1


