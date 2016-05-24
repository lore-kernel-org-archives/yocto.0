Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 341BFE008B8; Mon, 23 May 2016 19:07:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 984F2E00873
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 19:07:33 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 23 May 2016 19:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,358,1459839600"; d="scan'208";a="109226172"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga004.fm.intel.com with ESMTP; 23 May 2016 19:07:33 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 May 2016 19:07:31 -0700
Message-Id: <1464055651-9492-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
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
X-List-Received-Date: Tue, 24 May 2016 02:07:37 -0000


Fixed the path for the publishing of the eclipse plugins. They were
going to the wrong subdirectory under downloads.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 51cd607..3d4ce39 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -340,18 +340,18 @@ def publish_adt(rel_id, rel_type, opts):
             QEMU_TARGET = os.path.join(ADT_ROOTFS, dirname)
             print "QEMU_SRC: %s" %QEMU_SRC
             sync_it(QEMU_SRC, QEMU_TARGET, "")
-
         sync_it(IPK_DIR, ADT_IPK, "")
     return
 
 if __name__ == '__main__':
-
+    
     os.system("clear")
     print
-
+   
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
-    DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases/yocto")
+    DL_DIR = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    DL_BASE = os.path.join(DL_DIR, "/releases/yocto")
     ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
@@ -380,7 +380,7 @@ if __name__ == '__main__':
                       help="Use when you need to publish the ADT repo to a custom location. i.e. python adtcopy -b yocto-2.0_M1.rc1 -a 1.8+snaphot")
 
     (options, args) = parser.parse_args()
-
+ 
     REL_TYPE = ""
     MILESTONE = ""
     if options.poky:
@@ -427,12 +427,12 @@ if __name__ == '__main__':
         print "Build ID is a required argument."
         print "Please use -h or --help for options."
         sys.exit()
-
+   
     if not (RELEASE and RC and REL_ID and REL_TYPE):
         print "Can't determine the release type. Check your args."
         print "You gave me: %s" %options.build
         sys.exit()
-
+    
     print "RC_DIR: %s" %RC_DIR
     print "RELEASE: %s" %RELEASE
     print "RC: %s" %RC
@@ -442,7 +442,7 @@ if __name__ == '__main__':
         print "MILESTONE: %s" %MILESTONE
     print
 
-    PLUGIN_DIR = os.path.join(DL_BASE, "eclipse-plugin", REL_ID)
+    PLUGIN_DIR = os.path.join(DL_DIR, "eclipse-plugin", REL_ID)
     RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
     MACHINES = os.path.join(RELEASE_DIR, "machines")
     BSP_DIR = os.path.join(RELEASE_DIR, 'bsptarballs')
@@ -455,7 +455,7 @@ if __name__ == '__main__':
     # For all releases:
     # 1) Rsync the rc candidate to a staging dir where all work happens
     sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
-
+    
     # 2) Convert the symlinks in build-appliance dir.
     print "Converting the build-appliance symlink."
     convert_symlinks(BUILD_APP_DIR)
@@ -469,7 +469,7 @@ if __name__ == '__main__':
         nuke_cruft(dirname, CRUFT_LIST)
     print "Generating fresh md5sums."
     gen_md5sum(MACHINES)
-
+    
     # For major and point releases
     if REL_TYPE == "major" or REL_TYPE == "point":
         # 4) Fix up the eclipse and poky tarballs
@@ -487,7 +487,7 @@ if __name__ == '__main__':
         # 7) Generate the master md5sum file for the release (for all releases)
         print "Generating the master md5sum table."
         gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
-
+    
     # 8) sync to downloads
     if REL_TYPE == "milestone":
         DL_DIR = os.path.join(DL_BASE, "milestones", RELEASE)
-- 
2.7.0


