Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0781DE0159A
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 03:57:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Sep 2013 03:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,970,1371106800"; d="scan'208";a="382745972"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.52])
	by orsmga001.jf.intel.com with ESMTP; 24 Sep 2013 03:57:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Sep 2013 11:57:20 +0100
Message-Id: <1380020240-18547-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH] ref-manual: update list of undocumented classes
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
X-List-Received-Date: Tue, 24 Sep 2013 10:57:34 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/ref-manual/ref-classes.xml | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 6ed8fe5..83d4c1b 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -981,6 +981,7 @@
         allarch.bbclass
         archive*.bbclass
         binconfig.bbclass
+        bin_package.bbclass
         blacklist.bbclass
         bootimg.bbclass
         boot-directdisk.bbclass
@@ -989,6 +990,7 @@
         buildstats.bbclass
         ccache.bbclass
         chrpath.bbclass
+        clutter.bbclass
         cmake.bbclass
         cml1.bbclass
         copyleft_compliance.bbclass
@@ -998,7 +1000,9 @@
         crosssdk.bbclass
         deploy.bbclass
         distrodata.bbclass
+        distro_features_check.bbclass
         dummy.bbclass
+        extrausers.bbclass
         fontcache.bbclass
         gconf.bbclass
         gettext.bbclass
@@ -1017,12 +1021,11 @@
         image-mklibs.bbclass
         image-prelink.bbclass
         image-swab.bbclass
-        imagetest-dummy.bbclass
-        imagetest-qemu.bbclass
         image_types.bbclass
         image_types_uboot.bbclass
         insserv.bbclass
         kernel-arch.bbclass
+        kernel-module-split.bbclass
         kernel-yocto.bbclass
         lib_package.bbclass
         linux-kernel-base.bbclass
@@ -1063,6 +1066,7 @@
         sip.bbclass
         siteconfig.bbclass
         sourcepkg.bbclass
+        spdx.bbclass
         sstate.bbclass
         staging.bbclass
         syslinux.bbclass
@@ -1071,8 +1075,11 @@
         tinderclient.bbclass
         toolchain-scripts.bbclass
         typecheck.bbclass
+        uboot-config.bbclass
         utility-tasks.bbclass
         utils.bbclass
+        vala.bbclass
+        waf.bbclass
 -->
 
 
-- 
1.8.1.2


