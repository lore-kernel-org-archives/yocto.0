Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9FF4E007DC; Wed, 17 Feb 2016 03:01:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 972B7E00404
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 03:01:14 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 17 Feb 2016 03:01:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,459,1449561600"; d="scan'208";a="886857338"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2016 03:01:14 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Feb 2016 03:57:36 -0800
Message-Id: <1455710256-32546-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
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
X-List-Received-Date: Wed, 17 Feb 2016 11:01:18 -0000

This is part of the release automation work, related to
Yocto bug #8942. This patch includes:

- Adding a check to see if the rc candidate passed in actually
  exists first.
- Adds the ADT repo publishing step of the release process.
- Removes the print_vars function that was largely for script
  testing purposes and is essentially otherwise useless.
- Removes some variable definitions that were used for testing.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 134 ++++++++++++++++++++++++++---------------
 1 file changed, 85 insertions(+), 49 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 27ee409..d67a7ec 100755
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
@@ -346,21 +318,48 @@ def gen_rel_md5(dirname, md5_file):
     f.close()
     return
 
+def publish_adt(rel_id, rel_type, opts):
+    if opts:
+        ADT_DIR = os.path.join(ADT_BASE, opts)
+    else:
+        if rel_type == "milestone":
+            chunks = split_thing(rel_id, "_")
+            id_thing = float(chunks[0])
+            id_thing = id_thing - 0.1
+            rel_id = str(id_thing) + "+" + "snapshot"
+        ADT_DIR = os.path.join(ADT_BASE, rel_id)
+    print "ADT_DIR: %s" %ADT_DIR
+    if os.path.exists(ADT_DIR):
+        print "ADT_DIR %s EXISTS! Refusing to clobber!" %ADT_DIR
+        sys.exit()
+    else:
+        ADT_ROOTFS = os.path.join(ADT_DIR, "rootfs")
+        ADT_IPK = os.path.join(ADT_DIR, "adt-ipk")
+        QEMU_DIR = os.path.join(MACHINES, "qemu")
+        IPK_DIR = os.path.join(RELEASE_DIR, "ipk")
+        os.mkdir(ADT_DIR)
+        os.mkdir(ADT_ROOTFS)
+        dirlist = get_list(QEMU_DIR)
+
+        for dirname in dirlist:
+            QEMU_SRC = os.path.join(QEMU_DIR, dirname)
+            QEMU_TARGET = os.path.join(ADT_ROOTFS, dirname)
+            print "QEMU_SRC: %s" %QEMU_SRC
+            sync_it(QEMU_SRC, QEMU_TARGET, "")
+        
+        sync_it(IPK_DIR, ADT_IPK, "")
+    return
 
 if __name__ == '__main__':
     
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
+    ADT_DEV = os.path.join(VHOSTS, "adtrepo-dev")
+    ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
     UNLOVED = ['rpm', 'deb', 'ptest', 'adt-installer-QA']
@@ -381,7 +380,10 @@ if __name__ == '__main__':
     parser.add_option("-p", "--poky-ver",
                       type="string", dest="poky",
                       help="Required for Major and Point releases. i.e. 14.0.0")
-                     
+    parser.add_option("-a", "--adt-dir",
+                      type="string", dest="adt",
+                      help="Use when you need to publish the ADT repo to a custom location. i.e. python adtcopy -b yocto-2.0_M1.rc1 -a 1.8+snaphot")
+
     (options, args) = parser.parse_args()
  
     REL_TYPE = ""
@@ -395,19 +397,23 @@ if __name__ == '__main__':
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
@@ -420,14 +426,27 @@ if __name__ == '__main__':
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
+   
+    if not (RELEASE and RC and REL_ID and REL_TYPE):
+        print "Can't determine the release type. Check your args."
+        print "You gave me: %s" %options.build
+        sys.exit()
     
-    RC_SOURCE = os.path.join(AB_BASE, RC_DIR)
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
@@ -438,38 +457,55 @@ if __name__ == '__main__':
     ECLIPSE_DIR = os.path.join(RELEASE_DIR, "eclipse-plugin")
     BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
     REL_MD5_FILE = RELEASE + ".md5sum"
- 
-    print_vars()
 
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
 
+    # 9) Publish the ADT repo
+    # We do this after all the other stuff because we want the symlinks
+    # to have been converted, extraneous files deleted, and md5sums generated. This
+    # probably could run as it's own subprocess in parallel to other things to speed things up.
+    # For now, we do this at the end.
+    #
+    print "Publishing the ADT repo."
+    if options.adt:
+        publish_adt(REL_ID, REL_TYPE, options.adt)
+    else:
+        publish_adt(REL_ID, REL_TYPE, "")
-- 
2.4.3


