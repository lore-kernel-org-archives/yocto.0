Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07FE5E00C1B; Wed, 17 Feb 2016 20:41:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC9F4E00C10
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 20:41:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 17 Feb 2016 20:41:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,464,1449561600"; d="scan'208";a="888343884"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2016 20:41:06 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Feb 2016 21:37:27 -0800
Message-Id: <1455773848-6890-2-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1455773848-6890-1-git-send-email-tracy.graydon@intel.com>
References: <1455773848-6890-1-git-send-email-tracy.graydon@intel.com>
Subject: [yocto-autobuilder][PATCH 2/3] bin/release_scripts/release.py
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
X-List-Received-Date: Thu, 18 Feb 2016 04:41:11 -0000

From: Tracy Graydon <tracy.graydon@intel.com>

This is part of the release automation work, related to Yocto bug #8942. This
patch adds a check for a valid release candidate ID passed in from command line
and quits if it is bogus. Adds a few comments/output for the user for the
various release steps to improve clarity.

Signed-off-by: Tracy Graydon <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 53 +++++++++++++++++++++++++++++++-----------
 1 file changed, 39 insertions(+), 14 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 3dab369..c332718 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -360,19 +360,23 @@ if __name__ == '__main__':
     else:
         BRANCH = ""
 
-
     if options.build:
         # Figure out the release name, type of release, and generate some vars, do some basic validation
-        chunks = split_thing(options.build, ".")
+        options.build = options.build.lower()
+        RC = split_thing(options.build, ".")[-1]
+        chunks = split_thing(options.build, ".") # i.e. split yocto-2.1_m1.rc1
         chunks.pop()
-        RELEASE = rejoin_thing(chunks, ".")
-        rel_thing = split_thing(options.build, "-")
-        RC = split_thing(options.build, ".")[-1].lower()
-        RC_DIR = RELEASE + "." + RC
-        REL_ID = split_thing(RELEASE, "-")[-1]
-        milestone = split_thing(REL_ID, "_")
-        if len(milestone) == 1:
-            thing = split_thing(milestone[0], ".")
+        chunks[1] = chunks[1].upper()
+        RELEASE = rejoin_thing(chunks, ".")  # i.e. yocto-2.1_m1
+        REL_ID = split_thing(RELEASE, "-")[-1].upper()
+        RC_DIR = rejoin_thing([RELEASE, RC], ".")
+        RC_SOURCE = os.path.join(AB_BASE, RC_DIR)
+        if not os.path.exists(RC_SOURCE):
+            print "%s does not appear to be a valid RC dir. Check your args." %RC_SOURCE
+            sys.exit()
+        relstring = split_thing(REL_ID, "_")
+        if len(relstring) == 1:
+            thing = split_thing(relstring[0], ".")
             if len(thing) == 3:
                 REL_TYPE = "point"
             elif len(thing) == 2:
@@ -385,14 +389,27 @@ if __name__ == '__main__':
                 print "Please use -h or --help for options."
                 sys.exit()
         else:
-            MILESTONE = milestone.pop()
+            MILESTONE = relstring.pop()
             REL_TYPE = "milestone"
     else:
         print "Build ID is a required argument."
         print "Please use -h or --help for options."
         sys.exit()
-    
-    RC_SOURCE = os.path.join(AB_BASE, RC_DIR)
+
+    if not (RELEASE and RC and REL_ID and REL_TYPE):
+        print "Can't determine the release type. Check your args."
+        print "You gave me: %s" %options.build
+        sys.exit()
+
+    print "RC_DIR: %s" %RC_DIR
+    print "RELEASE: %s" %RELEASE
+    print "RC: %s" %RC
+    print "REL_ID: %s" %REL_ID
+    print "REL_TYPE: %s" %REL_TYPE
+    if MILESTONE:
+        print "MILESTONE: %s" %MILESTONE
+    print
+
     PLUGIN_DIR = os.path.join(DL_BASE, "eclipse-plugin", REL_ID)
     RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
     DL_DIR = os.path.join(DL_BASE, RELEASE)
@@ -403,36 +420,44 @@ if __name__ == '__main__':
     ECLIPSE_DIR = os.path.join(RELEASE_DIR, "eclipse-plugin")
     BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
     REL_MD5_FILE = RELEASE + ".md5sum"
- 
+       
     # For all releases:
     # 1) Rsync the rc candidate to a staging dir where all work happens
     sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
     
     # 2) Convert the symlinks in build-appliance dir.
+    print "Converting the build-appliance symlink."
     convert_symlinks(BUILD_APP_DIR)
 
     # 3) In machines dir, convert the symlinks, delete the cruft
+    print "Cleaning up the machines dirs, converting symlinks."
     dirlist = get_list(MACHINES)
     for dirname in dirlist:
         dirname = os.path.join(MACHINES, dirname)
         convert_symlinks(dirname)
         nuke_cruft(dirname, CRUFT_LIST)
+    print "Generating fresh md5sums."
     gen_md5sum(MACHINES)
     
     # For major and point releases
     if REL_TYPE == "major" or REL_TYPE == "point":
         # 4) Fix up the eclipse and poky tarballs
+        print "Cleaning up the eclipse, poky and other tarballs."
         fix_tarballs()
 
         # 5) Publish the eclipse stuff
+        print "Publishing the eclipse plugins."
         pub_eclipse(ECLIPSE_DIR, PLUGIN_DIR)
 
         # 6) Make the bsps
+        print "Generating the BSP tarballs."
         make_bsps(BSP_LIST, BSP_DIR)
 
     # 7) Generate the master md5sum file for the release (for all releases)
+    print "Generating the master md5sum table."
     gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
     
     # 8) sync to downloads
+    print "Publishing release to downloads."
     sync_it(RELEASE_DIR, DL_DIR, "")
 
-- 
2.4.3


