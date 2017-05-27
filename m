Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7252E00A94; Sat, 27 May 2017 03:15:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82D69E0085D
	for <yocto@yoctoproject.org>; Sat, 27 May 2017 03:15:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v4RAFtKw001747
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sat, 27 May 2017 03:15:55 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sat, 27 May 2017 03:15:55 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 27 May 2017 03:15:46 -0700
Message-ID: <20170527101553.15014-2-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20170527101553.15014-1-liezhi.yang@windriver.com>
References: <20170527101553.15014-1-liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: [layerindex-web][1/8] layerconfparse.py: remove unused layerbranch from parse_layer()
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
X-List-Received-Date: Sat, 27 May 2017 10:15:59 -0000
Content-Type: text/plain

The layerbranch is not used in parse_layer(), so remove it.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/layerconfparse.py     | 2 +-
 layerindex/tools/import_layer.py | 2 +-
 layerindex/update_layer.py       | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/layerindex/layerconfparse.py b/layerindex/layerconfparse.py
index d599ed5..526d2c2 100644
--- a/layerindex/layerconfparse.py
+++ b/layerindex/layerconfparse.py
@@ -32,7 +32,7 @@ class LayerConfParse:
 
         self.config_data_copy = bb.data.createCopy(self.tinfoil.config_data)
 
-    def parse_layer(self, layerbranch, layerdir):
+    def parse_layer(self, layerdir):
 
         # This is not a valid layer, parsing will cause exception.
         if not utils.is_layer_valid(layerdir):
diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index ad16e40..a806dd1 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -377,7 +377,7 @@ def main():
                         layerdep.save()
                     layerconfparser = LayerConfParse(logger=logger)
                     try:
-                        config_data = layerconfparser.parse_layer(layerbranch, layerdir)
+                        config_data = layerconfparser.parse_layer(layerdir)
                         if config_data:
                             utils.add_dependencies(layerbranch, config_data, logger=logger)
                             utils.add_recommends(layerbranch, config_data, logger=logger)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 9fe96fb..05ab3e7 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -267,7 +267,7 @@ def main():
                     sys.exit(0)
 
                 layerconfparser = layerconfparse.LayerConfParse(logger=logger, bitbakepath=bitbakepath, tinfoil=tinfoil)
-                config_data = layerconfparser.parse_layer(layerbranch, layerdir)
+                config_data = layerconfparser.parse_layer(layerdir)
                 if not config_data:
                     logger.debug("Layer %s does not appear to be valid for branch %s" % (layer.name, branchdesc))
                     sys.exit(0)
@@ -355,7 +355,7 @@ def main():
                 logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
 
                 layerconfparser = layerconfparse.LayerConfParse(logger=logger, tinfoil=tinfoil)
-                layer_config_data = layerconfparser.parse_layer(layerbranch, layerdir)
+                layer_config_data = layerconfparser.parse_layer(layerdir)
                 if not layer_config_data:
                     logger.info("Skipping update of layer %s for branch %s - conf/layer.conf may have parse issues" % (layer.name, branchdesc))
                     layerconfparser.shutdown()
-- 
2.10.2


