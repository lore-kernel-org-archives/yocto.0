Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D783E00563; Thu,  5 Jan 2017 13:18:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D70F3E0053F
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 13:18:50 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 05 Jan 2017 13:18:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,322,1477983600"; d="scan'208";a="49995160"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by fmsmga005.fm.intel.com with ESMTP; 05 Jan 2017 13:18:49 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jan 2017 15:21:36 -0600
Message-Id: <1483651296-8419-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[PATCH][layerindex]] layerindex: Update tinfoil to call shutdown method
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
X-List-Received-Date: Thu, 05 Jan 2017 21:18:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The new client/server API of tinfoil requires explicit call of
shutdown method to send the event for finalize cooker process.

Also in update_layer remove the databuilder and cache instance
now isn't needed.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 layerindex/bulkchange.py           | 1 +
 layerindex/recipedesc.py           | 2 ++
 layerindex/recipeparse.py          | 6 ------
 layerindex/tools/import_classic.py | 1 +
 layerindex/update_layer.py         | 1 +
 5 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index 8102571..e32fae6 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -231,6 +231,7 @@ def main():
 
         outp = generate_patches(tinfoil, fetchdir, changeset, sys.argv[2])
     finally:
+        tinfoil.shutdown()
         utils.unlock_file(lockfile)
 
     if outp:
diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
index 43376cf..989988a 100644
--- a/layerindex/recipedesc.py
+++ b/layerindex/recipedesc.py
@@ -89,6 +89,8 @@ def main():
             except Exception as e:
                 logger.info("Unable to read %s: %s", fullpath, str(e))
 
+    tinfoil.shutdown()
+
     sys.exit(0)
 
 
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 26c61aa..9cfd65c 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -34,12 +34,6 @@ def _setup_tinfoil(bitbakepath, enable_tracking):
             tinfoil.cooker.enableDataTracking()
     tinfoil.prepare(config_only = True)
 
-    # XXX: Setup databuilder
-    tinfoil.databuilder = bb.cookerdata.CookerDataBuilder(tinfoil.config)
-    tinfoil.databuilder.parseBaseConfiguration()
-
-    tinfoil.cache = bb.cache.NoCache(tinfoil.databuilder)
-
     return tinfoil
 
 def _parse_layer_conf(layerdir, data):
diff --git a/layerindex/tools/import_classic.py b/layerindex/tools/import_classic.py
index 45ccaa9..085401c 100755
--- a/layerindex/tools/import_classic.py
+++ b/layerindex/tools/import_classic.py
@@ -201,6 +201,7 @@ def main():
         transaction.rollback()
     finally:
         transaction.leave_transaction_management()
+        tinfoil.shutdown()
 
     shutil.rmtree(tempdir)
     sys.exit(0)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 13b508f..58050f9 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -611,6 +611,7 @@ def main():
         import traceback
         traceback.print_exc()
 
+    tinfoil.shutdown()
     shutil.rmtree(tempdir)
     sys.exit(0)
 
-- 
2.1.4


