Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF13E00D08; Tue,  3 May 2016 00:45:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3340E00CCA
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 00:45:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 03 May 2016 00:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,571,1455004800"; d="scan'208";a="967503555"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2016 00:45:15 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 00:44:58 -0700
Message-Id: <1462261498-32004-1-git-send-email-tracy.graydon@intel.com>
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
X-List-Received-Date: Tue, 03 May 2016 07:45:34 -0000

This patch removes the BSP creation for the p1022ds and the mpc8315e-rdb
platforms.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/release.py | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
index 158c44a..be67f9d 100755
--- a/bin/release_scripts/release.py
+++ b/bin/release_scripts/release.py
@@ -244,18 +244,9 @@ def nuke_cruft(dirname, ext_list):
             qemu_dir = os.path.join(MACHINES, dirname, dir)
             nuke_cruft(qemu_dir, CRUFT_LIST)
     else:
-        foo = dirname.find("p1022")
-        if foo == -1:
-            # NOT P1022ds
-            for ext in ext_list:
-                print "Deleting %s files" %ext
-                os.system("rm -f %s/%s" %(dirname, ext))
-        else:
-            # IS P1022ds
-            for ext in ext_list:
-                if ext != "*.tar.gz":
-                    print "Deleting %s files" %ext
-                    os.system("rm -f %s/%s" %(dirname, ext))
+        for ext in ext_list:
+            print "Deleting %s files" %ext
+            os.system("rm -f %s/%s" %(dirname, ext))
     print
     return
 
@@ -368,7 +359,7 @@ if __name__ == '__main__':
     # List of the files in machines directories that we delete from all releases
     CRUFT_LIST = ['*.md5sum', '*.tar.gz', '*.iso']
     # List of the platforms for which we want to generate BSP tarballs. Major and point releases.
-    BSP_LIST = ['beaglebone', 'edgerouter', 'genericx86', 'genericx86-64', 'mpc8315e-rdb', 'p1022ds']
+    BSP_LIST = ['beaglebone', 'edgerouter', 'genericx86', 'genericx86-64']
     # List of files we do not want to include in the BSP tarballs.
     BSP_JUNK = ['*.manifest', '*.tar.bz2', '*.tgz', '*.iso', '*.md5sum', '*.tar.gz', '*-dev-*', '*-sdk-*']
 
-- 
2.7.0


