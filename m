Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89F9DE00B1E; Tue,  3 May 2016 20:48:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448DAE00AD2
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 20:48:44 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2016 20:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,574,1455004800"; d="scan'208";a="696515032"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by FMSMGA003.fm.intel.com with ESMTP; 03 May 2016 20:48:36 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 20:48:15 -0700
Message-Id: <1462333696-18329-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH 1/2] bin/release_scripts/release.py
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

Fixed the path for the publishing of the eclipse plugins. They were
going to the wrong subdirectory under downloads.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index be67f9d..cae6fe7 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -351,7 +351,8 @@ if __name__ == '__main__':
    
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
-    DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases/yocto")
+    DL_DIR = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    DL_BASE = os.path.join(DL_DIR, "/releases/yocto")
     ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
@@ -442,7 +443,7 @@ if __name__ == '__main__':
         print "MILESTONE: %s" %MILESTONE
     print
 
-    PLUGIN_DIR = os.path.join(DL_BASE, "eclipse-plugin", REL_ID)
+    PLUGIN_DIR = os.path.join(DL_DIR, "eclipse-plugin", REL_ID)
     RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
     MACHINES = os.path.join(RELEASE_DIR, "machines")
     BSP_DIR = os.path.join(RELEASE_DIR, 'bsptarballs')
-- 
2.7.0


