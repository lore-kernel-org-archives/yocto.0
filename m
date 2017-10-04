Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C97C9E00D4F; Tue,  3 Oct 2017 17:51:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F47EE00D48
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 17:51:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 03 Oct 2017 17:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,475,1500966000"; d="scan'208";a="142395698"
Received: from kmsim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.147])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2017 17:51:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Oct 2017 13:51:01 +1300
Message-Id: <20171004005103.24756-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
Subject: [layerindex-web][PATCH 1/3] update: allow preserving temp directory
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
X-List-Received-Date: Wed, 04 Oct 2017 00:51:41 -0000

If you're diagnosing problems with the bitbake server when running the
update script, then you need to be able to look at
bitbake-cookerdaemon.log, but you couldn't do that after the fact
because the temporary directory it gets written out to was being
unconditionally deleted. Add a --keep-temp option which preserves it and
some debug messages to tell you where it is.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py       |  5 +++++
 layerindex/update_layer.py | 10 +++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 2d578df..d1e67a0 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -85,6 +85,8 @@ def prepare_update_layer_command(options, branch, layer, initial=False):
         cmd += ' -d'
     elif options.loglevel == logging.ERROR:
         cmd += ' -q'
+    if options.keep_temp:
+        cmd += ' --keep-temp'
     return cmd
 
 def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake, bitbakepath):
@@ -165,6 +167,9 @@ def main():
     parser.add_option("-q", "--quiet",
             help = "Hide all output except error messages",
             action="store_const", const=logging.ERROR, dest="loglevel")
+    parser.add_option("", "--keep-temp",
+            help = "Preserve temporary directory at the end instead of deleting it",
+            action="store_true")
 
     options, args = parser.parse_args(sys.argv)
     if len(args) > 1:
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 7f0c08f..d91c00e 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -194,6 +194,9 @@ def main():
     parser.add_option("-q", "--quiet",
             help = "Hide all output except error messages",
             action="store_const", const=logging.ERROR, dest="loglevel")
+    parser.add_option("", "--keep-temp",
+            help = "Preserve temporary directory at the end instead of deleting it",
+            action="store_true")
 
     options, args = parser.parse_args(sys.argv)
     if len(args) > 1:
@@ -258,6 +261,7 @@ def main():
     except recipeparse.RecipeParseError as e:
         logger.error(str(e))
         sys.exit(1)
+    logger.debug('Using temp directory %s' % tempdir)
     # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
     tinfoil.config_data.setVar('SUMMARY', '')
     # Clear the default value of DESCRIPTION so that we can see where it's not set
@@ -702,7 +706,11 @@ def main():
         if LooseVersion(bb.__version__) > LooseVersion("1.27"):
             tinfoil.shutdown()
 
-    shutil.rmtree(tempdir)
+    if options.keep_temp:
+        logger.debug('Preserving temp directory %s' % tempdir)
+    else:
+        logger.debug('Deleting temp directory')
+        shutil.rmtree(tempdir)
     sys.exit(0)
 
 
-- 
2.9.5


