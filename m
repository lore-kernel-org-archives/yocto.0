Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A304E00C22; Fri, 23 Jun 2017 00:45:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB7C2E00BDC
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 00:45:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5N7jOkC006359
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Jun 2017 00:45:24 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 23 Jun 2017 00:45:23 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Fri, 23 Jun 2017 00:45:09 -0700
Message-ID: <7d0d60803a142aaf15039965114c0758b02bc347.1498203770.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <cover.1498203770.git.liezhi.yang@windriver.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: [layerindex-web][PATCH V5 10/10] update_layer.py: delete layerbranch for non-existed branch
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
X-List-Received-Date: Fri, 23 Jun 2017 07:45:31 -0000
Content-Type: text/plain

The branch is not needed any more when it has been removed from the repo, so we
also need remove its layerbranch, otherwise it still can be got from the web,
which causes confusions.

Note, we have to move the location of tinfiol's code to avoid creating tinfoil
when not needed, otherewise, if tinfoil is created (but not needed), and the
program exists earlier before "try ... finally" block, then tinfoil.shutdown()
doesn't run so that it is not shutdown. Move the code back, right before where
it is needed can fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update_layer.py | 34 ++++++++++++++++++----------------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index b6c2f4a..7f0c08f 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -223,21 +223,6 @@ def main():
 
     bitbakepath = os.path.join(fetchdir, 'bitbake')
 
-    try:
-        (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
-    except recipeparse.RecipeParseError as e:
-        logger.error(str(e))
-        sys.exit(1)
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
     layer = utils.get_layer(options.layer)
     urldir = layer.get_fetch_dir()
     repodir = os.path.join(fetchdir, urldir)
@@ -261,12 +246,29 @@ def main():
             topcommit = repo.commit('origin/%s' % branchname)
     except:
         if layerbranch:
-            logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
+            logger.info("layer %s - branch %s no longer exists, removing it from database" % (layer.name, branchdesc))
+            if not options.dryrun:
+                layerbranch.delete()
         else:
             logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
         sys.exit(1)
 
     try:
+        (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
+    except recipeparse.RecipeParseError as e:
+        logger.error(str(e))
+        sys.exit(1)
+    # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
+    tinfoil.config_data.setVar('SUMMARY', '')
+    # Clear the default value of DESCRIPTION so that we can see where it's not set
+    tinfoil.config_data.setVar('DESCRIPTION', '')
+    # Clear the default value of HOMEPAGE ('unknown')
+    tinfoil.config_data.setVar('HOMEPAGE', '')
+    # Set a blank value for LICENSE so that it doesn't cause the parser to die (e.g. with meta-ti -
+    # why won't they just fix that?!)
+    tinfoil.config_data.setVar('LICENSE', '')
+
+    try:
         with transaction.atomic():
             newbranch = False
             if not layerbranch:
-- 
2.10.2


