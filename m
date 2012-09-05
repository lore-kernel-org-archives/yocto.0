Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD0CE014D5
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Sep 2012 07:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100825"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:07 +0100
Message-Id: <fd5084617227403390f89182812fdf8708aaa118.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 09/12] documentation/poky-ref-manual: update undocumented classes list
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Sep 2012 14:35:27 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |   28 +++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index b836e2c..9e07c62 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -623,33 +623,54 @@
 
 <!-- Undocumented classes are:
         allarch.bbclass
+        archive*.bbclass
         binconfig.bbclass
+        blacklist.bbclass
         bootimg.bbclass
+        boot-directdisk.bbclass
+        bugzilla.bbclass
+        buildhistory.bbclass
         buildstats.bbclass
-        ccache.inc
+        ccache.bbclass
+        chrpath.bbclass
         cmake.bbclass
         cml1.bbclass
+        copyleft_compliance.bbclass
+        core-image.bbclass
         cross.bbclass
         cross-canadian.bbclass
+        crosssdk.bbclass
         deploy.bbclass
         distrodata.bbclass
+        dummy.bbclass
         gconf.bbclass
         gettext.bbclass
+        gnomebase.bbclass
         gnome.bbclass
         gtk-doc.bbclass
         gtk-icon-cache.bbclass
+        gzipnative.bbclass
         icecc.bbclass
+        image-empty.bbclass
+        image-live.bbclass
+        image-vmdk.bbclass
         image-mklibs.bbclass
         image-prelink.bbclass
         image-swab.bbclass
         imagetest-dummy.bbclass
         imagetest-qemu.bbclass
+        image_types.bbclass
+        image_types_uboot.bbclass
         insserv.bbclass
+        kernel-arch.bbclass
+        kernel-yocto.bbclass
         lib_package.bbclass
+        linux-kernel-base.bbclass
         license.bbclass
         logging.bbclass
         meta.bbclass
         metadata_scm.bbclass
+        mime.bbclass
         mirrors.bbclass
         multilib*.bbclass
         native.bbclass
@@ -657,14 +678,17 @@
         oelint.bbclass
         own-mirrors.bbclass
         packagedata.bbclass
-        packagehistory.bbclass
+        packageinfo.bbclass
         patch.bbclass
         perlnative.bbclass
         pkg_distribute.bbclass
         pkg_metainfo.bbclass
         populate_sdk*.bbclass
+        prexport.bbclass
+        primport.bbclass
         prserv.bbclass
         python-dir.bbclass
+        pythonnative.bbclass
         qemu.bbclass
         qmake*.bbclass
         qt4*.bbclass
-- 
1.7.9.5


