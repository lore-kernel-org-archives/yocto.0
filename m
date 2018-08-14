Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 026D1E00A54; Tue, 14 Aug 2018 06:32:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE96AE00A39
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:32:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2018 06:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,238,1531810800"; d="scan'208";a="66079736"
Received: from pciunel-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.52.11])
	by orsmga006.jf.intel.com with ESMTP; 14 Aug 2018 06:32:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 15:32:14 +0200
Message-Id: <143c8c25a9264c6c61787d719842c308482ee632.1534253407.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1534253406.git.paul.eggleton@linux.intel.com>
References: <cover.1534253406.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/5] update: avoid errors if values could not be found in initial output
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
X-List-Received-Date: Tue, 14 Aug 2018 13:32:37 -0000

If for some reason update_layer.py does not print out the values we
expect then we shouldn't be throwing a traceback, we should be handling
it gracefully - i.e., print an error and then move on to the next layer.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 5c9f6e75..5713b2e5 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -118,6 +118,13 @@ def print_subdir_error(newbranch, layername, vcs_subdir, branchdesc):
     elif vcs_subdir:
         logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layername, branchdesc))
 
+def extract_value(valuename, output):
+    res = re.search("^%s = \"(.*)\"" % valuename, output, re.M)
+    if res:
+        return res.group(1) or ''
+    else:
+        return ''
+
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
@@ -395,10 +402,15 @@ def main():
                         sys.exit(254)
                     elif ret != 0:
                         continue
-                    col = re.search("^BBFILE_COLLECTIONS = \"(.*)\"", output, re.M).group(1) or ''
-                    ver = re.search("^LAYERVERSION = \"(.*)\"", output, re.M).group(1) or ''
-                    deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
-                    recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
+
+                    col = extract_value('BBFILE_COLLECTIONS', output)
+                    if not col:
+                        logger.error('Unable to find BBFILE_COLLECTIONS value in initial output')
+                        # Assume (perhaps naively) that it's an error specific to the layer
+                        continue
+                    ver = extract_value('LAYERVERSION', output)
+                    deps = extract_value('LAYERDEPENDS', output)
+                    recs = extract_value('LAYERRECOMMENDS', output)
 
                     deps_dict = utils.explode_dep_versions2(bitbakepath, deps)
                     recs_dict = utils.explode_dep_versions2(bitbakepath, recs)
-- 
2.17.1


