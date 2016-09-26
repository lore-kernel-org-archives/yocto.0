Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F0DE00828; Mon, 26 Sep 2016 11:25:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D0C4E00828
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:25:56 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8QIPtRA016026
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Sep 2016 11:25:55 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:55 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:36 -0400
Message-ID: <1474914338-26310-9-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 08/10] layerindex: Add collection and version to layerbranch
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

Collection and version will be pulled from the layer.conf if it exists
and dependencies will be resolved by first checking for layers with the
dependency name and then checking for collections.  It is necessary to
shutdown tinfoil to avoid bitbake complaining about multiple instances.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/models.py             |  2 ++
 layerindex/tools/import_layer.py |  3 ---
 layerindex/update.py             |  1 +
 layerindex/update_layer.py       | 25 +++++++++++++++++++------
 layerindex/utils.py              | 16 ++++++++++++++--
 5 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index 2db8818..dcccb1f 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -130,6 +130,8 @@ class LayerItem(models.Model):
 class LayerBranch(models.Model):
     layer = models.ForeignKey(LayerItem)
     branch = models.ForeignKey(Branch)
+    collection = models.CharField('Layer Collection', max_length=40, unique=True, null=True, help_text='Name of the layer that could be used in the list of dependencies - must be unique and can only contain letters, numbers and dashes')
+    version = models.CharField('Layer Version', max_length=10, null=True, help_text='The layer version for this particular branch.')
     vcs_subdir = models.CharField('Repository subdirectory', max_length=40, blank=True, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
     vcs_last_fetch = models.DateTimeField('Last successful fetch', blank=True, null=True)
     vcs_last_rev = models.CharField('Last revision fetched', max_length=80, blank=True)
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 0a13d21..21dd802 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -383,9 +383,6 @@ def main():
                         layerdep.layerbranch = layerbranch
                         layerdep.dependency = core_layer
                         layerdep.save()
-                    layerconfparser = LayerConfParse(logger=logger)
-                    config_data = layerconfparser.parse_layer(layerdir)
-                    layerconfparser.shutdown()
                     utils.add_dependencies(layerbranch, config_data, logger=logger)
 
 
diff --git a/layerindex/update.py b/layerindex/update.py
index ecd2380..e15caf6 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -213,6 +213,7 @@ def main():
                 layerbranch = layer.get_layerbranch(branch)
                 if layerbranch.vcs_subdir:
                     repodir = os.path.join(repodir, layerbranch.vcs_subdir)
+
                 config_data = layerconfparser.parse_layer(repodir)
                 utils.add_dependencies(layerbranch, config_data, logger=logger)
 
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index a937000..22c0dab 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -196,16 +196,18 @@ def main():
     except recipeparse.RecipeParseError as e:
         logger.error(str(e))
         sys.exit(1)
+    config_data = bb.data.createCopy(tinfoil.config_data)
+    tinfoil.shutdown()
 
     # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
-    tinfoil.config_data.setVar('SUMMARY', '')
+    config_data.setVar('SUMMARY', '')
     # Clear the default value of DESCRIPTION so that we can see where it's not set
-    tinfoil.config_data.setVar('DESCRIPTION', '')
+    config_data.setVar('DESCRIPTION', '')
     # Clear the default value of HOMEPAGE ('unknown')
-    tinfoil.config_data.setVar('HOMEPAGE', '')
+    config_data.setVar('HOMEPAGE', '')
     # Set a blank value for LICENSE so that it doesn't cause the parser to die (e.g. with meta-ti -
     # why won't they just fix that?!)
-    tinfoil.config_data.setVar('LICENSE', '')
+    config_data.setVar('LICENSE', '')
 
     try:
         with transaction.atomic():
@@ -244,7 +246,7 @@ def main():
                 layerbranch = LayerBranch()
                 layerbranch.layer = layer
                 layerbranch.branch = branch
-                layerbranch_source = layer.get_layerbranch('master')
+
                 if not layerbranch_source:
                     layerbranch_source = layer.get_layerbranch(None)
                 if layerbranch_source:
@@ -262,6 +264,9 @@ def main():
                         dep.layerbranch = layerbranch
                         dep.save()
 
+            layerbranch_source = layer.get_layerbranch('master')
+
+
             if layerbranch.vcs_subdir and not options.nocheckout:
                 # Find latest commit in subdirectory
                 # A bit odd to do it this way but apparently there's no other way in the GitPython API
@@ -280,6 +285,14 @@ def main():
 
             layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
             layerdir_start = os.path.normpath(layerdir) + os.sep
+
+            from layerconfparse import LayerConfParse
+            layerconfparser = LayerConfParse(logger=logger)
+            layer_config_data = layerconfparser.parse_layer(layerdir)
+            layerconfparser.shutdown()
+            utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
+            layerbranch.save()
+
             layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
             layermachines = Machine.objects.filter(layerbranch=layerbranch)
             layerdistributions = Distribution.objects.filter(layerbranch=layerbranch)
@@ -305,7 +318,7 @@ def main():
                 logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
 
                 try:
-                    config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
+                    config_data_copy = recipeparse.setup_layer(config_data, fetchdir, layerdir, layer, layerbranch)
                 except recipeparse.RecipeParseError as e:
                     logger.error(str(e))
                     sys.exit(1)
diff --git a/layerindex/utils.py b/layerindex/utils.py
index f82f8c7..2b49d64 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -30,8 +30,10 @@ def get_layer(layername):
 def get_dependency_layer(depname, version_str=None, logger=None):
     from layerindex.models import LayerItem, LayerBranch
 
-    # Get any LayerBranch with a layer that has a name that matches the depname
-    res = list(LayerBranch.objects.filter(layer__name=depname))
+    # Get any LayerBranch with a layer that has a name that matches depmod, or
+    # a LayerBranch that has the collection name depmod.
+    res = list(LayerBranch.objects.filter(layer__name=depname)) + \
+          list(LayerBranch.objects.filter(collection=depname))
 
     # Nothing found, return.
     if len(res) == 0:
@@ -104,11 +106,21 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None):
 
         if logger:
             logger.debug('Adding %s %s to %s' % (name, dep_layer.name, layer_name))
+
         layerdep = LayerDependency()
         layerdep.layerbranch = layerbranch
         layerdep.dependency = dep_layer
         layerdep.save()
 
+def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
+
+            layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
+            ver_str = "LAYERVERSION_"
+            if layerbranch.collection:
+                layerbranch.collection = layerbranch.collection.strip()
+                ver_str += layerbranch.collection
+                layerbranch.version = config_data.getVar(ver_str, True)
+
 def setup_tinfoil(bitbakepath, enable_tracking):
     sys.path.insert(0, bitbakepath + '/lib')
     import bb.tinfoil
-- 
1.9.1


