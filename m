Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B5B7E00C18; Fri, 23 Jun 2017 00:45:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56DE6E00BE8
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:45:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5N7jGBL018219
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 23 Jun 2017 00:45:16 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 23 Jun 2017 00:45:16 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Fri, 23 Jun 2017 00:45:02 -0700
Message-ID: <9704c9cde66324985ae1877dae7adf2cddf9014d.1498203770.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1498203770.git.liezhi.yang@windriver.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: [layerindex-web][PATCH V5 03/10] utils.py: add REMOVE_LAYER_DEPENDENCIES to remove dependencies
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
X-List-Received-Date: Fri, 23 Jun 2017 07:45:30 -0000
Content-Type: text/plain

Fixed:
  - set LAYERDEPENDS_openembedded-layer = "core"
  - $ "update.py -l meta-oe -b master"
    Check from web, its dependency is "openembedded-core"
  - Change LAYERDEPENDS_openembedded-layer = "foo"
  - Run "update.py -l meta-oe -b master"
    Check from web, its dependency is "openembedded-core and foo", this might
    be incorrect, now if set REMOVE_LAYER_DEPENDENCIES to true, the old
    dependency openembedded-core will be removed, the default is False which
    prints warnings to notify users.

And also the existing checking should filter(required=required), otherwise it
can't work well when a layer is in both depends and recommends, this can't
happen in a normal case, but it would surprise the user when this happens.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 19 ++++++++++++++++++-
 settings.py         |  3 +++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 186d342..5acf35f 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -88,6 +88,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, layer_name, str(vse)))
         return
 
+    need_remove = None
     for dep, ver_list in list(dep_dict.items()):
         ver_str = None
         if ver_list:
@@ -106,8 +107,14 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
                 logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
                 continue
 
+        # Preparing to remove obsolete ones
+        if not need_remove:
+            need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).exclude(dependency=dep_layer)
+        else:
+            need_remove = need_remove.exclude(dependency=dep_layer)
+
         # Skip existing entries.
-        existing = list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(dependency=dep_layer))
+        existing = list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).filter(dependency=dep_layer))
         if existing:
             logger.debug('Skipping %s - already a dependency for %s' % (dep, layer_name))
             continue
@@ -121,6 +128,16 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         layerdep.required = required
         layerdep.save()
 
+    if need_remove:
+        import settings
+        remove_layer_dependencies = getattr(settings, 'REMOVE_LAYER_DEPENDENCIES', False)
+        if remove_layer_dependencies:
+            logger.info('Removing obsolete dependencies "%s" for layer %s' % (need_remove, layer_name))
+            need_remove.delete()
+        else:
+            logger.warn('Dependencies "%s" is not in %s\'s conf/layer.conf' % (need_remove, layer_name))
+            logger.warn('Either set REMOVE_LAYER_DEPENDENCIES to remove it from database or fix conf/layer.conf')
+
 def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
     layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
     ver_str = "LAYERVERSION_"
diff --git a/settings.py b/settings.py
index 0ecf90b..3498e7a 100644
--- a/settings.py
+++ b/settings.py
@@ -214,6 +214,9 @@ CORE_LAYER_NAME = "openembedded-core"
 # Update records older than this number of days will be deleted every update
 UPDATE_PURGE_DAYS = 30
 
+# Remove layer dependencies if it is not in conf/layer.conf
+REMOVE_LAYER_DEPENDENCIES = False
+
 # Settings for layer submission feature
 SUBMIT_EMAIL_FROM = 'noreply@example.com'
 SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
-- 
2.10.2


