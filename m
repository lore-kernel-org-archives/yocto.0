Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A6C0E00DD2; Tue,  2 Jan 2018 21:42:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E92FE00DE6
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 21:42:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w035gRAx016036
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Jan 2018 21:42:27 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Tue, 2 Jan 2018 21:42:27 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 3 Jan 2018 13:42:26 +0800
Message-ID: <3ba35c5f8f9e66073444679ad00d6ce69a158668.1514957938.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1514957938.git.liezhi.yang@windriver.com>
References: <cover.1514957938.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 5/5] update_layer.py: only call init_parser when needed
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
X-List-Received-Date: Wed, 03 Jan 2018 05:42:29 -0000
Content-Type: text/plain

The tinoil is not needed in cases like the layer is already up-to-date or the
layer is invalid, so only init it when needed.

This can save about 1min when run "update.py -b <branch>" (124 layers).

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update_layer.py | 45 +++++++++++++++++++++++----------------------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 329c30c..c012404 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -244,22 +244,8 @@ def main(options, queue):
             logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
         return (1, '')
 
-    try:
-        (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
-    except recipeparse.RecipeParseError as e:
-        logger.error(str(e))
-        return(1, '')
-    logger.debug('Using temp directory %s' % tempdir)
-    # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
-    tinfoil.config_data.setVar('SUMMARY', '')
-    # Clear the default value of DESCRIPTION so that we can see where it's not set
-    tinfoil.config_data.setVar('DESCRIPTION', '')
-    # Clear the default value of HOMEPAGE ('unknown')
-    tinfoil.config_data.setVar('HOMEPAGE', '')
-    # Set a blank value for LICENSE so that it doesn't cause the parser to die (e.g. with meta-ti -
-    # why won't they just fix that?!)
-    tinfoil.config_data.setVar('LICENSE', '')
-
+    tinfoil = None
+    tempdir = None
     try:
         with transaction.atomic():
             newbranch = False
@@ -323,6 +309,20 @@ def main(options, queue):
                     return (1, '')
 
                 logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
+                try:
+                    (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
+                except recipeparse.RecipeParseError as e:
+                    logger.error(str(e))
+                    return(1, '')
+                # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
+                tinfoil.config_data.setVar('SUMMARY', '')
+                # Clear the default value of DESCRIPTION so that we can see where it's not set
+                tinfoil.config_data.setVar('DESCRIPTION', '')
+                # Clear the default value of HOMEPAGE ('unknown')
+                tinfoil.config_data.setVar('HOMEPAGE', '')
+                # Set a blank value for LICENSE so that it doesn't cause the parser to die (e.g. with meta-ti -
+                # why won't they just fix that?!)
+                tinfoil.config_data.setVar('LICENSE', '')
 
                 layerconfparser = layerconfparse.LayerConfParse(logger=logger, tinfoil=tinfoil)
                 layer_config_data = layerconfparser.parse_layer(layerdir)
@@ -687,12 +687,13 @@ def main(options, queue):
         import traceback
         traceback.print_exc()
     finally:
-        if LooseVersion(bb.__version__) > LooseVersion("1.27"):
+        if tinfoil and (LooseVersion(bb.__version__) > LooseVersion("1.27")):
             tinfoil.shutdown()
 
-    if options.keep_temp:
-        logger.debug('Preserving temp directory %s' % tempdir)
-    else:
-        logger.debug('Deleting temp directory')
-        shutil.rmtree(tempdir)
+    if tempdir:
+        if options.keep_temp:
+            logger.debug('Preserving temp directory %s' % tempdir)
+        else:
+            logger.debug('Deleting temp directory')
+            shutil.rmtree(tempdir)
     return(0, '')
-- 
2.7.4


