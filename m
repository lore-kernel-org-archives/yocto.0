Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7435DE00DC3; Wed, 29 Jun 2016 15:58:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 321FFE00DAE
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 15:58:52 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 29 Jun 2016 15:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,549,1459839600"; d="scan'208";a="130886635"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga004.fm.intel.com with ESMTP; 29 Jun 2016 15:58:53 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Jun 2016 15:58:40 -0700
Message-Id: <1467241120-32511-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autobuilder][PATCH] bin/release_scripts/release.py: Add some basic logging
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
X-List-Received-Date: Wed, 29 Jun 2016 22:58:54 -0000

This patch adds some basic logging to help find failure point should the script
barf due to lost ssh session, etc. Without it, finding where to resume is not
particularly entertaining.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 43 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 89f68be..b62b48c 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -10,6 +10,7 @@ __maintainer__ = "Tracy Graydon"
 __email__ = "tracy.graydon@intel.com"
 '''
 
+import logging
 import os
 import optparse
 import sys
@@ -82,6 +83,7 @@ def rejoin_thing(thing, marker):
 def fix_tarballs():
     print
     print "Repackaging poky and eclipse tarballs...."
+    logging.info('Repackaging poky and eclipse tarballs.')
     os.chdir(RELEASE_DIR)
     os.mkdir(TARBALL_DIR)
     os.system("mv %s/*.tar.bz2 %s" %(RELEASE_DIR, TARBALL_DIR))
@@ -90,6 +92,7 @@ def fix_tarballs():
     dirlist = get_list(TARBALL_DIR)
     for blob in dirlist:
         print "Original Tarball: %s" %blob
+        logging.info('Repackaging %s' %blob)
         chunks = split_thing(blob, ".")
         filename = chunks[0]
         basename = split_thing(filename, "-")
@@ -99,6 +102,7 @@ def fix_tarballs():
         chunks[0] = new_name
         new_blob = rejoin_thing(chunks, ".")
         print "New Tarball: %s" %new_blob
+        logging.info('New blob is %s' %new_blob)
         os.system("tar jxf %s" %blob)
         os.system("mv %s %s" %(filename, new_name))
         os.system("rm -rf %s/.git*" %new_name)
@@ -107,10 +111,13 @@ def fix_tarballs():
         rmtree(new_name)
         os.symlink(new_blob, blob)
         os.system("md5sum %s > %s.md5sum" %(new_blob, new_blob))
+        logging.info('Successful.')
         print
+    logging.info('Moving new blobs to release diri and cleaning up.')
     os.system("mv * %s" %RELEASE_DIR)
     os.chdir(RELEASE_DIR)
     os.rmdir(TARBALL_DIR)
+    logging.info('Successful.')
     print
     return
 
@@ -348,9 +355,18 @@ if __name__ == '__main__':
     os.system("clear")
     print
    
+    logfile = 'staging.log'
+    try:
+        os.remove(logfile)
+    except OSError:
+        pass    
+
+    logging.basicConfig(format='%(levelname)s:%(message)s',filename=logfile,level=logging.INFO)
+    
     VHOSTS = "/srv/www/vhosts"
     AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
     DL_DIR = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    DL_BASE = os.path.join(DL_DIR, "/releases/yocto")
     ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
 
     # List of the directories we delete from all releases
@@ -453,40 +469,59 @@ if __name__ == '__main__':
 
     # For all releases:
     # 1) Rsync the rc candidate to a staging dir where all work happens
+    logging.info('Start rsync.')
+    print "Doing the rsync for the staging directory."
     sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
-    
+    logging.info('Successful.')   
+ 
     # 2) Convert the symlinks in build-appliance dir.
     print "Converting the build-appliance symlink."
+    logging.info('Converting build-appliance symlink.')
     convert_symlinks(BUILD_APP_DIR)
+    logging.info('Successful.')
 
     # 3) In machines dir, convert the symlinks, delete the cruft
     print "Cleaning up the machines dirs, converting symlinks."
+    logging.info('Machines dir cleanup started.')
     dirlist = get_list(MACHINES)
     for dirname in dirlist:
         dirname = os.path.join(MACHINES, dirname)
+        logging.info('Converting symlinks in %s' %dirname)
         convert_symlinks(dirname)
+        logging.info('Successful.')
+        logging.info('Nuking cruft in %s' %dirname)
         nuke_cruft(dirname, CRUFT_LIST)
+        logging.info('Successful.')
     print "Generating fresh md5sums."
+    logging.info('Generating fresh md5sums.')
     gen_md5sum(MACHINES)
+    logging.info('Successful.')
     
     # For major and point releases
     if REL_TYPE == "major" or REL_TYPE == "point":
         # 4) Fix up the eclipse and poky tarballs
         print "Cleaning up the eclipse, poky and other tarballs."
+        logging.info('Fixing tarballs.')
         fix_tarballs()
-
+        
         # 5) Publish the eclipse stuff
         print "Publishing the eclipse plugins."
+        logging.info('Publishing eclipse plugins.')
         pub_eclipse(ECLIPSE_DIR, PLUGIN_DIR)
+        logging.info('Successful.')
 
         # 6) Make the bsps
         print "Generating the BSP tarballs."
+        logging.info('Generating BSP tarballs.')
         make_bsps(BSP_LIST, BSP_DIR)
+        logging.info('Successful.')
 
         # 7) Generate the master md5sum file for the release (for all releases)
         print "Generating the master md5sum table."
+        logging.info('Generating the master md5sum table.')
         gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
-    
+        logging.info('Successful.')
+
     # 8) Publish the ADT repo. The default is NOT to publish the ADT. The ADT
     # is deprecated as of 2.1_M1. However, we need to retain backward
     # compatability for point releases, etc. We do this step after all the other
@@ -494,9 +529,11 @@ if __name__ == '__main__':
     # files deleted, and md5sums generated.
     #
     if options.pub_adt:
+        logging.info('Publishing the ADT repo.')
         if options.adt_dir:
             print "Publishing the ADT repo using custom dir %s" %options.adt_dir
             publish_adt(REL_ID, REL_TYPE, options.adt_dir)
         else:
             print "Publishing ADT repo."
             publish_adt(REL_ID, REL_TYPE, "")
+        logging.info('Successful.')
-- 
2.7.0


