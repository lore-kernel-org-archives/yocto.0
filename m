Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AF33E00D99; Wed, 27 Dec 2017 05:03:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F541E00D74
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 05:03:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBRD3UWP014274
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Dec 2017 05:03:31 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 27 Dec 2017 05:03:30 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Wed, 27 Dec 2017 21:03:28 +0800
Message-ID: <249dd179ad3130bb7a3a93370d2b4315cd62fc2d.1514379277.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1514379277.git.liezhi.yang@windriver.com>
References: <cover.1514379277.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 1/2] utils.py: fix remove obsolete dependencies
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
X-List-Received-Date: Wed, 27 Dec 2017 13:03:33 -0000
Content-Type: text/plain

The obsolete dependency is the one which is in database but not in
conf/layer.conf anymore. The old code had a problem for newly created
layerbranch, the new layerbranch has no dependencies, so no need remove. And it
had a side effect was that when need_remove was cleaned up, it would be set
again in the next for loop, thus might wrongly remove dependencies. This patch
can fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index e58d8f6..08a4001 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -122,7 +122,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, layer_name, str(vse)))
         return
 
-    need_remove = None
+    need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required)
     for dep, ver_list in list(dep_dict.items()):
         ver_str = None
         if ver_list:
@@ -142,9 +142,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
                 continue
 
         # Preparing to remove obsolete ones
-        if not need_remove:
-            need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).exclude(dependency=dep_layer)
-        else:
+        if need_remove:
             need_remove = need_remove.exclude(dependency=dep_layer)
 
         # Skip existing entries.
-- 
2.7.4


