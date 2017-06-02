Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD71E00B81; Thu,  1 Jun 2017 23:28:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C99BE00B77
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 23:28:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v526SpNl031307
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 1 Jun 2017 23:28:52 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Jun 2017 23:28:51 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Jun 2017 23:28:39 -0700
Message-ID: <d89c1aa3eb448eeac888c5f151e9eacb704943d4.1496384657.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1496384657.git.liezhi.yang@windriver.com>
References: <cover.1496384657.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [PATCH V3 02/11] utils.py: remove obsolete dependencies
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
X-List-Received-Date: Fri, 02 Jun 2017 06:28:55 -0000
Content-Type: text/plain

Fixed:
  - set LAYERDEPENDS_openembedded-layer = "core"
  - $ "update.py -l meta-oe -b master"
    Check from web, its dependency is "openembedded-core"
  - Change LAYERDEPENDS_openembedded-layer = "foo"
  - Run "update.py -l meta-oe -b master"
    Check from web, its dependency is "openembedded-core and foo", this is
    wrong, it should be "foo" only, this patch can fix the problem.

And also the existing checking should filter(required=required),
otherwise it can't work well when a layer is in both depends and
recommends, this can't happen in a normal case, but it would surprise the
user when this happens.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 3b45b07..1a57c07 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -88,6 +88,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, layer_name, str(vse)))
         return
 
+    need_delete = None
     for dep, ver_list in list(dep_dict.items()):
         ver_str = None
         if ver_list:
@@ -106,8 +107,14 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
                 logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
                 continue
 
+        # Preparing to remove obsolete ones
+        if not need_delete:
+            need_delete = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).exclude(dependency=dep_layer)
+        else:
+            need_delete = need_delete.exclude(dependency=dep_layer)
+
         # Skip existing entries.
-        existing = list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(dependency=dep_layer))
+        existing = list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).filter(dependency=dep_layer))
         if existing:
             logger.debug('Skipping %s - already a dependency for %s' % (dep, layer_name))
             continue
@@ -121,6 +128,10 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         layerdep.required = required
         layerdep.save()
 
+    if need_delete:
+        logger.debug("Removing obsolete dependencies: %s" % need_delete)
+        need_delete.delete()
+
 def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
     layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
     ver_str = "LAYERVERSION_"
-- 
2.10.2


