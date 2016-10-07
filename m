Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FCA4E00C62; Fri,  7 Oct 2016 08:57:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407F9E00C4B
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u97FvVKE011625
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 7 Oct 2016 08:57:31 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:30 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:16 -0400
Message-ID: <1475855841-30009-8-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 07/12] layerindex/recipeparse.py: refactor setup_tinfoil, checkout_layer_branch, parse_layer_conf to utils.py
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

Move functions to utils to be used by other classes.
_
Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/bulkchange.py  |  4 ++--
 layerindex/recipeparse.py | 39 +++-----------------------------------
 layerindex/utils.py       | 48 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+), 38 deletions(-)

diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index 8102571..ac9079f 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -42,9 +42,9 @@ def generate_patches(tinfoil, fetchdir, changeset, outputdir):
                     patchname = "%s.patch" % layer.name
                     patches.append(patchname)
                     layerfetchdir = os.path.join(fetchdir, layer.get_fetch_dir())
-                    recipeparse.checkout_layer_branch(layerbranch, layerfetchdir)
+                    utils.checkout_layer_branch(layerbranch, layerfetchdir)
                     layerdir = os.path.join(layerfetchdir, layerbranch.vcs_subdir)
-                    config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
+                    config_data_copy = utils.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
                     if outfile:
                         outfile.close()
                     outfile = open(os.path.join(tmpoutdir, patchname), 'w')
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index a9cecfc..91a083b 100644
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
@@ -110,14 +85,6 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
 
     return (tinfoil, tempdir)
 
-def checkout_layer_branch(layerbranch, repodir, logger=None):
-    if layerbranch.actual_branch:
-        branchname = layerbranch.actual_branch
-    else:
-        branchname = layerbranch.branch.name
-    out = utils.runcmd("git checkout origin/%s" % branchname, repodir, logger=logger)
-    out = utils.runcmd("git clean -f -x", repodir, logger=logger)
-
 def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch):
     # Parse layer.conf files for this layer and its dependencies
     # This is necessary not just because BBPATH needs to be set in order
@@ -125,7 +92,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch):
     # or across layers, but also because custom variable values might be
     # set in layer.conf.
     config_data_copy = bb.data.createCopy(config_data)
-    _parse_layer_conf(layerdir, config_data_copy)
+    utils.parse_layer_conf(layerdir, config_data_copy)
     for dep in layerbranch.dependencies_set.all():
         depurldir = dep.dependency.get_fetch_dir()
         deprepodir = os.path.join(fetchdir, depurldir)
@@ -133,7 +100,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch):
         if not deplayerbranch:
             raise RecipeParseError('Dependency %s of layer %s does not have branch record for branch %s' % (dep.dependency.name, layer.name, layerbranch.branch.name))
         deplayerdir = os.path.join(deprepodir, deplayerbranch.vcs_subdir)
-        _parse_layer_conf(deplayerdir, config_data_copy)
+        utils.parse_layer_conf(deplayerdir, config_data_copy)
     config_data_copy.delVar('LAYERDIR')
     return config_data_copy
 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 23b81f5..b634ce6 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -27,6 +27,54 @@ def get_layer(layername):
         return res[0]
     return None
 
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
+def checkout_layer_branch(layerbranch, repodir, logger=None):
+
+    branchname = layerbranch.branch.name
+    if layerbranch.actual_branch:
+        branchname = layerbranch.actual_branch
+
+    out = runcmd("git checkout origin/%s" % branchname, repodir, logger=logger)
+    out = runcmd("git clean -f -x", repodir, logger=logger)
+
+def is_layer_valid(layerdir):
+    conf_file = os.path.join(layerdir, "conf", "layer.conf")
+    if not os.path.isfile(conf_file):
+        return False
+    return True
+
+def parse_layer_conf(layerdir, data, logger=None):
+    conf_file = os.path.join(layerdir, "conf", "layer.conf")
+
+    if not is_layer_valid(layerdir):
+        if logger:
+            logger.error("Cannot find layer.conf: %s"% conf_file)
+        return
+
+    data.setVar('LAYERDIR', str(layerdir))
+    if hasattr(bb, "cookerdata"):
+        # Newer BitBake
+        data = bb.cookerdata.parse_config_file(conf_file, data)
+    else:
+        # Older BitBake (1.18 and below)
+        data = bb.cooker._parse(conf_file, data)
+    data.expandVarref('LAYERDIR')
+
 def runcmd(cmd, destdir=None, printerr=True, logger=None):
     """
         execute command, raise CalledProcessError if fail
-- 
1.9.1


