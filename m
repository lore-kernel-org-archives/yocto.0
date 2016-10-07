Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA1BE00C6A; Fri,  7 Oct 2016 08:57:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A2EBE00C71
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvXba016468
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:33 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:32 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:18 -0400
Message-ID: <1475855841-30009-10-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 09/12] layerindex: Add collection and version to layerbranch
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:39 -0000
Content-Type: text/plain

Collection and version will be pulled from the layer.conf if it exists
and dependencies will be resolved by first checking for layers with the
dependency name and then checking for collections.  It is necessary to
shutdown tinfoil to avoid bitbake complaining about multiple instances.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/models.py       |  2 ++
 layerindex/update_layer.py |  1 +
 layerindex/utils.py        | 20 ++++++++++++++++++--
 3 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index 2343ba7..cbfb244 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -130,6 +130,8 @@ class LayerItem(models.Model):
 class LayerBranch(models.Model):
     layer = models.ForeignKey(LayerItem)
     branch = models.ForeignKey(Branch)
+    collection = models.CharField('Layer Collection', max_length=40, null=True, help_text='Name of the layer that could be used in the list of dependencies - can only contain letters, numbers and dashes')
+    version = models.CharField('Layer Version', max_length=10, null=True, blank=True, help_text='The layer version for this particular branch.')
     vcs_subdir = models.CharField('Repository subdirectory', max_length=40, blank=True, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
     vcs_last_fetch = models.DateTimeField('Last successful fetch', blank=True, null=True)
     vcs_last_rev = models.CharField('Last revision fetched', max_length=80, blank=True)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index addeb4c..40d1f16 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -283,6 +283,7 @@ def main():
                 layerconfparser.shutdown()
                 sys.exit(1)
             utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
+            utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
             layerbranch.save()
 
             layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 018478e..170d202 100644
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
     if not res:
@@ -68,6 +70,10 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None):
     layer_name = layerbranch.layer.name
     var_name = layer_name
 
+    if layerbranch.collection:
+        var_name = layerbranch.collection
+
+
     dep_list = config_data.getVar("%s_%s" % (var, var_name), True)
 
     if not dep_list:
@@ -104,11 +110,21 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None):
 
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


