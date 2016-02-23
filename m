Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C6D2E00D58; Tue, 23 Feb 2016 13:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF5DE00D3E
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:44:32 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 23 Feb 2016 13:44:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,491,1449561600"; d="scan'208";a="751934763"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga003.jf.intel.com with ESMTP; 23 Feb 2016 13:44:31 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Feb 2016 14:40:43 -0800
Message-Id: <1456267247-15726-2-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
References: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
Subject: [yocto-autobuilder][PATCH 2/6] bin/release_scripts/release.py: remove stuff only used for initial testing
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

This is part of the release automation work, related to Yocto bug #8942. This
patch removes the print_vars function and some other lines that were only used
for testing and are otherwise useless.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 37 -------------------------------------
 1 file changed, 37 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 27ee409..3dab369 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -20,33 +20,6 @@ import shutil
 from shutil import rmtree, copyfile
 from subprocess import call
 
-def print_vars():
-    print "RELEASE: %s" %RELEASE
-    print "REL_TYPE: %s" %REL_TYPE
-    print "RC_DIR: %s" %RC_DIR
-    print "REL_ID: %s" %REL_ID
-    print "RC: %s" %RC
-    if MILESTONE != "":
-        print "Milestone: %s" %MILESTONE
-    if POKY_VER != "":
-        print "POKY_VER: %s" %POKY_VER
-    else:
-       print "POKY_VER: undefined!"
-    if BRANCH:
-        print "BRANCH: %s" %BRANCH
-    else:
-        print "BRANCH: undefined!"
-
-    print "DL_BASE: %s" %DL_BASE
-    if RC_SOURCE != "":
-        print "RC_SOURCE: %s" %RC_SOURCE
-    print "RELEASE_DIR: %s" %RELEASE_DIR
-    print "ECLIPSE_DIR: %s" %ECLIPSE_DIR
-    print "PLUGIN_DIR: %s" %PLUGIN_DIR
-    print "DL_DIR: %s" %DL_DIR
-    print
-    return
-
 def sanity_check(source, target):
     if not os.path.exists(source):
        print
@@ -64,7 +37,6 @@ def sanity_check(source, target):
        sys.exit()
     return
 
-
 def sync_it(source, target, exclude_list):
     print "Syncing %s to %s" %(source, target)
     sanity_check(source, target)
@@ -112,7 +84,6 @@ def fix_tarballs():
     print "Repackaging poky and eclipse tarballs...."
     os.chdir(RELEASE_DIR)
     os.mkdir(TARBALL_DIR)
-    #os.mkdir("%s" %TARBALL_DIR)
     os.system("mv %s/*.tar.bz2 %s" %(RELEASE_DIR, TARBALL_DIR))
     os.system("rm *.md5sum")
     os.chdir(TARBALL_DIR)
@@ -352,12 +323,6 @@ if __name__ == '__main__':
     os.system("clear")
     print
    
-    # This is for testing convenience
-    #HOME_BASE = "/home/tgraydon/work/release"
-    #AB_BASE = HOME_BASE
-    #DL_BASE = os.path.join(HOME_BASE, "downloads")
-
-    # This is the legit set of vars used for production release
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
     DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
@@ -439,8 +404,6 @@ if __name__ == '__main__':
     BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
     REL_MD5_FILE = RELEASE + ".md5sum"
  
-    print_vars()
-
     # For all releases:
     # 1) Rsync the rc candidate to a staging dir where all work happens
     sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
-- 
2.4.3


