Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6883E00D5C; Tue, 23 Feb 2016 13:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB7AE00D54
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:44:33 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 23 Feb 2016 13:44:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,491,1449561600"; d="scan'208";a="751934774"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga003.jf.intel.com with ESMTP; 23 Feb 2016 13:44:31 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Feb 2016 14:40:47 -0800
Message-Id: <1456267247-15726-6-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
References: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
Subject: [yocto-autobuilder][PATCH 6/6] bin/release_scripts/release.py: fix the BSP tarball naming
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
X-List-Received-Date: Tue, 23 Feb 2016 21:44:34 -0000

The BSP packaging was missing the branch name from the repackaged tarball. The
md5sums were also not being generated for the BSP tarballs. This patch fixes both
these issues.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 8751a04..4c71e31 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -200,21 +200,23 @@ def make_bsps(bsp_list, bsp_dir):
                 print "Creating %s bsp dir" %dirname
                 os.mkdir(dirname)
             target = os.path.join(dirname, POKY_TARBALL)
-            copyfile(poky_blob, target)
-            os.chdir(dirname)
-            print "Unpacking poky tarball."
-            os.system("tar jxf %s" %POKY_TARBALL)
             oldblob = POKY_TARBALL
             chunks = split_thing(oldblob, "-")
             chunks[0] = dirname
             new_blob = rejoin_thing(chunks, "-")
+            print "BSP tarball: %s" %new_blob
             new_dir = split_thing(blob_dir, "-")
             new_dir[0] = dirname
             new_dir = rejoin_thing(new_dir, "-")
             bin_dir = os.path.join(new_dir, "binary")
+            copyfile(poky_blob, target)
+            os.chdir(dirname)
+            print "Unpacking poky tarball."
+            os.system("tar jxf %s" %POKY_TARBALL)
             shutil.move(blob_dir, new_dir)
             os.remove(POKY_TARBALL)
-            os.mkdir(bin_dir)
+            if not os.path.exists(bin_dir):
+                os.mkdir(bin_dir)
             print "Getting binary files"
             os.system("rsync -arl %s/%s/ %s" %(MACHINES, dirname, bin_dir))
             bsp_bin = os.path.join(bsp_dir, dirname, bin_dir)
@@ -224,8 +226,10 @@ def make_bsps(bsp_list, bsp_dir):
             print "Creating BSP tarball"
             os.system("tar jcf %s %s" %(new_blob, new_dir))
             rmtree(new_dir)
-            print "Copying %s BSP tarball to machines dir" %new_blob
-            shutil.copy(new_blob, platform_dir)
+            print "Generating the md5sum."
+            os.system("md5sum %s > %s.md5sum" %(new_blob, new_blob))
+            print "Copying %s BSP to platform dir" %dirname
+            os.system("mv * %s" %platform_dir)
             os.chdir(bsp_dir)
         print
     os.chdir(RELEASE_DIR)
@@ -356,7 +360,7 @@ if __name__ == '__main__':
    
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
-    DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases/yocto")
     ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
@@ -453,7 +457,7 @@ if __name__ == '__main__':
     MACHINES = os.path.join(RELEASE_DIR, "machines")
     BSP_DIR = os.path.join(RELEASE_DIR, 'bsptarballs')
     TARBALL_DIR = os.path.join(RELEASE_DIR, "tarballs")
-    POKY_TARBALL = "poky-" + POKY_VER + ".tar.bz2"
+    POKY_TARBALL = "poky-" + BRANCH + "-" + POKY_VER + ".tar.bz2"
     ECLIPSE_DIR = os.path.join(RELEASE_DIR, "eclipse-plugin")
     BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
     REL_MD5_FILE = RELEASE + ".md5sum"
@@ -511,4 +515,3 @@ if __name__ == '__main__':
         else:
             print "Publishing ADT repo."
             publish_adt(REL_ID, REL_TYPE, "")
-
-- 
2.4.3


