Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E01A3E00DD7; Sun,  8 Jul 2018 21:01:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A762CE00D3D
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 21:01:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w6941UCr013874
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jul 2018 21:01:30 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Sun, 8 Jul 2018 21:01:30 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 9 Jul 2018 12:11:27 +0800
Message-ID: <a02cf1b6d04658216eadffc817a651dc47fcfbfb.1531109397.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1531109397.git.liezhi.yang@windriver.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 1/4] update_layer.py: avoid calling setup_core_layer_sys_path() when --initial
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
X-List-Received-Date: Mon, 09 Jul 2018 04:01:34 -0000
Content-Type: text/plain

Fixed:
$ update.py -b <new_branch>
[snip]
NOTE: Starting bitbake server...
Traceback (most recent call last):
  File "update_layer.py", line 471, in main
    utils.setup_core_layer_sys_path(settings, branch.name)
  File "/buildarea1/lyang1/layerindex-web/layerindex/utils.py", line 376, in setup_core_layer_sys_path
    core_layerdir = os.path.join(core_repodir, core_layerbranch.vcs_subdir)
AttributeError: 'NoneType' object has no attribute 'vcs_subdir'
[snip]

This is because core_layerbranch is not in database yet for completely new
branch, so it is None and we will get the error. Avoid calling
setup_core_layer_sys_path() when "update_layer.py --initial" will fix the
problem.

And also only add core layer's sys path when it is present, since core layer
may not be added yet for completely new branch.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update_layer.py | 19 ++++++++++---------
 layerindex/utils.py        |  9 +++++----
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index bbfaba9..81b730a 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -426,15 +426,6 @@ def main():
                 # why won't they just fix that?!)
                 tinfoil.config_data.setVar('LICENSE', '')
 
-                # Set up for recording patch info
-                utils.setup_core_layer_sys_path(settings, branch.name)
-                skip_patches = False
-                try:
-                    import oe.recipeutils
-                except ImportError:
-                    logger.warn('Failed to find lib/oe/recipeutils.py in layers - patch information will not be collected')
-                    skip_patches = True
-
                 layerconfparser = layerconfparse.LayerConfParse(logger=logger, tinfoil=tinfoil)
                 layer_config_data = layerconfparser.parse_layer(layerdir)
                 if not layer_config_data:
@@ -447,6 +438,16 @@ def main():
                     for i in ["BBFILE_COLLECTIONS", "LAYERVERSION", "LAYERDEPENDS", "LAYERRECOMMENDS"]:
                         print('%s = "%s"' % (i, utils.get_layer_var(layer_config_data, i, logger)))
                     sys.exit(0)
+
+                # Set up for recording patch info
+                utils.setup_core_layer_sys_path(settings, branch.name)
+                skip_patches = False
+                try:
+                    import oe.recipeutils
+                except ImportError:
+                    logger.warn('Failed to find lib/oe/recipeutils.py in layers - patch information will not be collected')
+                    skip_patches = True
+
                 utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
                 utils.add_recommends(layerbranch, layer_config_data, logger=logger)
                 layerbranch.save()
diff --git a/layerindex/utils.py b/layerindex/utils.py
index f8c5fd4..c30038d 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -371,10 +371,11 @@ def setup_core_layer_sys_path(settings, branchname):
     """
     core_layer = get_layer(settings.CORE_LAYER_NAME)
     core_layerbranch = core_layer.get_layerbranch(branchname)
-    core_urldir = core_layer.get_fetch_dir()
-    core_repodir = os.path.join(settings.LAYER_FETCH_DIR, core_urldir)
-    core_layerdir = os.path.join(core_repodir, core_layerbranch.vcs_subdir)
-    sys.path.insert(0, os.path.join(core_layerdir, 'lib'))
+    if core_layerbranch:
+        core_urldir = core_layer.get_fetch_dir()
+        core_repodir = os.path.join(settings.LAYER_FETCH_DIR, core_urldir)
+        core_layerdir = os.path.join(core_repodir, core_layerbranch.vcs_subdir)
+        sys.path.insert(0, os.path.join(core_layerdir, 'lib'))
 
 def run_command_interruptible(cmd):
     """
-- 
2.7.4


