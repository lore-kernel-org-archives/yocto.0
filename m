Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75EF9E00B2F; Tue,  3 May 2016 20:48:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B85E00B1A
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 20:48:46 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 20:48:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,574,1455004800"; d="scan'208";a="696515035"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by FMSMGA003.fm.intel.com with ESMTP; 03 May 2016 20:48:37 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 20:48:16 -0700
Message-Id: <1462333696-18329-2-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
In-Reply-To: <1462333696-18329-1-git-send-email-tracy.graydon@intel.com>
References: <1462333696-18329-1-git-send-email-tracy.graydon@intel.com>
Subject: [yocto-autobuilder][PATCH 2/2] bin/release_scripts/release.py
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
X-List-Received-Date: Wed, 04 May 2016 03:48:49 -0000

Remove the step for syncing the staged release to downloads directory. We
pretty much NEVER do the sync to downloads at the time we do staging. Sync
happens much later, as a separate process. We don't need this in the release
script.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index cae6fe7..cfd65cd 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -489,17 +489,7 @@ if __name__ == '__main__':
         print "Generating the master md5sum table."
         gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
     
-    # 8) sync to downloads
-    if REL_TYPE == "milestone":
-        DL_DIR = os.path.join(DL_BASE, "milestones", RELEASE)
-        print "DL_DIR for milestones: %s" %DL_DIR
-    else:
-        DL_DIR = os.path.join(DL_BASE, RELEASE)
-        print "DL_DIR for point/major: %s" %DL_DIR
-    print "Publishing release to downloads."
-    sync_it(RELEASE_DIR, DL_DIR, "")
-
-    # 9) Publish the ADT repo. The default is NOT to publish the ADT. The ADT
+    # 8) Publish the ADT repo. The default is NOT to publish the ADT. The ADT
     # is deprecated as of 2.1_M1. However, we need to retain backward
     # compatability for point releases, etc. We do this step after all the other
     #  stuff because we want the symlinks to have been converted, extraneous
-- 
2.7.0


