Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954BFE00B5E; Tue, 16 Oct 2018 23:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE6CE00B5E
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 23:35:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9H6ZLWS022562
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 23:35:31 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 16 Oct 2018 23:35:10 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 17 Oct 2018 14:23:38 +0800
Message-ID: <20181017062338.94580-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [layerindex-web] update: Parse the layer's compatible version info
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
X-List-Received-Date: Wed, 17 Oct 2018 06:35:44 -0000
Content-Type: text/plain

We have already set the layer's compatible version info in the
layer.conf, but we lack this info in the layerindex database.
Add support to parse this info and set it in the corresponding tables.
We plan to use this to filter the layerindex results.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 layerindex/update.py       |  9 +++++++++
 layerindex/update_layer.py | 23 ++++++++++++++++++++++-
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 0b0f4804bba5..1610ae7989da 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -127,6 +127,13 @@ def extract_value(valuename, output):
     else:
         return ''
 
+def delete_dangling_ypcompatibleversion():
+    from layerindex.models import LayerBranch, YPCompatibleVersion
+
+    for ypcv in YPCompatibleVersion.objects.all():
+        if not LayerBranch.objects.filter(yp_compatible_version=ypcv):
+            ypcv.delete()
+
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
@@ -574,6 +581,8 @@ def main():
             update.save()
 
     if not options.dryrun:
+        delete_dangling_ypcompatibleversion()
+
         # Purge old update records
         update_purge_days = getattr(settings, 'UPDATE_PURGE_DAYS', 30)
         Update.objects.filter(started__lte=datetime.now()-timedelta(days=update_purge_days)).delete()
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 42b618ff5944..9140ec4c2ed1 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -292,6 +292,26 @@ def update_distro_conf_file(path, distro, d):
     else:
         distro.description = desc
 
+def get_yp_compatible_version(layer_config_data):
+    vers = utils.get_layer_var(layer_config_data, 'LAYERSERIES_COMPAT', logger)
+    if not vers:
+        return None;
+
+    vers = vers.split()
+    vers.sort()
+    vers = ' '.join(vers)
+
+    from layerindex.models import YPCompatibleVersion
+    ypcv = YPCompatibleVersion.objects.filter(name=vers)
+    if ypcv:
+        ypcv = ypcv[0]
+    else:
+        ypcv = YPCompatibleVersion()
+        ypcv.name = vers
+        ypcv.save()
+
+    return ypcv
+
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
@@ -347,7 +367,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, Distro, BBAppend, BBClass
+    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, Distro, BBAppend, BBClass, YPCompatibleVersion
     from django.db import transaction
 
     logger.setLevel(options.loglevel)
@@ -465,6 +485,7 @@ def main():
                     logger.warn('Failed to find lib/oe/recipeutils.py in layers - patch information will not be collected')
                     skip_patches = True
 
+                layerbranch.yp_compatible_version = get_yp_compatible_version(layer_config_data)
                 utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
                 utils.add_recommends(layerbranch, layer_config_data, logger=logger)
                 layerbranch.save()
-- 
2.14.4


