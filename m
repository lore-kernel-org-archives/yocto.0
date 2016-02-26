Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03960E00D21; Thu, 25 Feb 2016 16:54:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 770FEE00D1A
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 16:53:59 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 25 Feb 2016 16:53:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,498,1449561600"; d="scan'208";a="753451323"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga003.jf.intel.com with ESMTP; 25 Feb 2016 16:53:58 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Feb 2016 17:50:11 -0800
Message-Id: <1456451411-1278-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
Subject: [yocto-autobuilder][PATCH] bin/release_scripts/release.py: fix milestone staging
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
X-List-Received-Date: Fri, 26 Feb 2016 00:54:01 -0000

From: Tracy Graydon <tracy.graydon@intel.com>

Milestones were going into the top level of the download release directory
instead of the milestones subdirectory. Added a check for milestone releases
and now adjusts the path accordingly. Also fixed an indent issue which was
causing the master md5sum table to be generated for milestones.

Signed-off-by: Tracy Graydon <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 4c71e31..158c44a 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -453,7 +453,6 @@ if __name__ == '__main__':
 
     PLUGIN_DIR = os.path.join(DL_BASE, "eclipse-plugin", REL_ID)
     RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
-    DL_DIR = os.path.join(DL_BASE, RELEASE)
     MACHINES = os.path.join(RELEASE_DIR, "machines")
     BSP_DIR = os.path.join(RELEASE_DIR, 'bsptarballs')
     TARBALL_DIR = os.path.join(RELEASE_DIR, "tarballs")
@@ -494,18 +493,24 @@ if __name__ == '__main__':
         print "Generating the BSP tarballs."
         make_bsps(BSP_LIST, BSP_DIR)
 
-    # 7) Generate the master md5sum file for the release (for all releases)
-    print "Generating the master md5sum table."
-    gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
+        # 7) Generate the master md5sum file for the release (for all releases)
+        print "Generating the master md5sum table."
+        gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
     
     # 8) sync to downloads
+    if REL_TYPE == "milestone":
+        DL_DIR = os.path.join(DL_BASE, "milestones", RELEASE)
+        print "DL_DIR for milestones: %s" %DL_DIR
+    else:
+        DL_DIR = os.path.join(DL_BASE, RELEASE)
+        print "DL_DIR for point/major: %s" %DL_DIR
     print "Publishing release to downloads."
     sync_it(RELEASE_DIR, DL_DIR, "")
 
-    # 9) Publish the ADT repo. The default is NOT to publish the ADT. The ADT 
-    # is deprecated as of 2.1_M1. However, we need to retain backward 
+    # 9) Publish the ADT repo. The default is NOT to publish the ADT. The ADT
+    # is deprecated as of 2.1_M1. However, we need to retain backward
     # compatability for point releases, etc. We do this step after all the other
-    #  stuff because we want the symlinks to have been converted, extraneous 
+    #  stuff because we want the symlinks to have been converted, extraneous
     # files deleted, and md5sums generated.
     #
     if options.pub_adt:
-- 
2.4.3


