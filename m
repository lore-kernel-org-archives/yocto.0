Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F250FE00D16; Mon, 25 Sep 2017 16:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85B1E00C89
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 16:50:34 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2017 16:50:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,438,1500966000"; d="scan'208";a="1018341851"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga003.jf.intel.com with ESMTP; 25 Sep 2017 16:50:33 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Sep 2017 16:49:37 -0700
Message-Id: <1506383377-2442-1-git-send-email-amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex][PATCH] Don't show "Starting bitbake server" in update log
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
X-List-Received-Date: Mon, 25 Sep 2017 23:50:36 -0000

If a log level is set on the command line with -q/-d,
set tinfoil's log level to the appropriate log level.

Fixes [YOCTO #11931]

Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
---
 layerindex/recipeparse.py | 5 ++++-
 layerindex/utils.py       | 5 ++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index f2a5235..af0c736 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -73,7 +73,10 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
     saved_cwd = os.getcwd()
     os.chdir(tempdir)
 
-    tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking)
+    if logger:
+        tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking, loglevel=logger.getEffectiveLevel())
+    else:
+        tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking)
 
     os.chdir(saved_cwd)
 
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 2f9501c..e58d8f6 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -180,7 +180,7 @@ def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
         ver_str += layerbranch.collection
         layerbranch.version = config_data.getVar(ver_str, True)
 
-def setup_tinfoil(bitbakepath, enable_tracking):
+def setup_tinfoil(bitbakepath, enable_tracking, loglevel=None):
     sys.path.insert(0, bitbakepath + '/lib')
     import bb.tinfoil
     import bb.cooker
@@ -192,6 +192,9 @@ def setup_tinfoil(bitbakepath, enable_tracking):
         tinfoil = bb.tinfoil.Tinfoil()
         if enable_tracking:
             tinfoil.cooker.enableDataTracking()
+    tinfoil.logger.setLevel(logging.WARNING)
+    if loglevel:
+        tinfoil.logger.setLevel(loglevel)
     tinfoil.prepare(config_only = True)
 
     return tinfoil
-- 
2.7.4


