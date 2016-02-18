Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 297E4E00C13; Wed, 17 Feb 2016 20:41:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E58E00C13
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 20:41:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 17 Feb 2016 20:41:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,464,1449561600"; d="scan'208";a="888343886"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2016 20:41:06 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Feb 2016 21:37:28 -0800
Message-Id: <1455773848-6890-3-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1455773848-6890-1-git-send-email-tracy.graydon@intel.com>
References: <1455773848-6890-1-git-send-email-tracy.graydon@intel.com>
Subject: [yocto-autobuilder][PATCH 3/3] bin/release_scripts/release.py
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
X-List-Received-Date: Thu, 18 Feb 2016 04:41:13 -0000

From: Tracy Graydon <tracy.graydon@intel.com>

This is part of the release automation work, related to Yocto bug #8942. This
patch adds the ADT repo publishing functionality for backward compatability
for point releases, etc. Not used going forward since we have moved to the
eSDK instead, so this defaults to NOT publishing the ADT repo. A flag has
been added to cue publishing, along with an option to provide a custom
target direactory name for oddball cases where release numbering may not
be linear. i.e There was no 1.9 release, so ADT repo for 2.0_M1 would have
actually been 1.8+snapshot. This allows for those corner cases.

Signed-off-by: Tracy Graydon <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 58 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 4 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index c332718..83c198e 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -317,6 +317,37 @@ def gen_rel_md5(dirname, md5_file):
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
     
@@ -326,6 +357,7 @@ if __name__ == '__main__':
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
     DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
     UNLOVED = ['rpm', 'deb', 'ptest', 'adt-installer-QA']
@@ -346,7 +378,12 @@ if __name__ == '__main__':
     parser.add_option("-p", "--poky-ver",
                       type="string", dest="poky",
                       help="Required for Major and Point releases. i.e. 14.0.0")
-                     
+    parser.add_option("-a", action="store_true", dest="pub_adt",
+                      help="Publish an ADT repo for the release. Default is NOT to publish.")
+    parser.add_option("-d", "--adt-dir",
+                      type="string", dest="adt_dir",
+                      help="Use when you need to publish the ADT repo to a custom location. i.e. python adtcopy -b yocto-2.0_M1.rc1 -a 1.8+snaphot")
+
     (options, args) = parser.parse_args()
  
     REL_TYPE = ""
@@ -395,12 +432,12 @@ if __name__ == '__main__':
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
@@ -420,7 +457,7 @@ if __name__ == '__main__':
     ECLIPSE_DIR = os.path.join(RELEASE_DIR, "eclipse-plugin")
     BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
     REL_MD5_FILE = RELEASE + ".md5sum"
-       
+
     # For all releases:
     # 1) Rsync the rc candidate to a staging dir where all work happens
     sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
@@ -461,3 +498,16 @@ if __name__ == '__main__':
     print "Publishing release to downloads."
     sync_it(RELEASE_DIR, DL_DIR, "")
 
+    # 9) Publish the ADT repo. The default is NOT to publish the ADT. The ADT 
+    # is deprecated as of 2.1_M1. However, we need to retain backward 
+    # compatability for point releases, etc. We do this step after all the other
+    #  stuff because we want the symlinks to have been converted, extraneous 
+    # files deleted, and md5sums generated.
+    #
+    if options.pub_adt:
+        if options.adt_dir:
+            print "Publishing the ADT repo using custom dir %s" %options.adt_dir
+            publish_adt(REL_ID, REL_TYPE, options.adt_dir)
+        else:
+            print "Publishing ADT repo."
+            publish_adt(REL_ID, REL_TYPE, "")
-- 
2.4.3


