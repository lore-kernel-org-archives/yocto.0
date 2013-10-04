Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15B1E01642
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:11:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2013 16:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747469"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:17 +0100
Message-Id: <454d3d416d6248d0de9643b753b8a36dd7209395.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 4/6] schroedinger: remove
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
X-List-Received-Date: Fri, 04 Oct 2013 23:11:01 -0000

No longer needed. A patch has been sent to add it to meta-multimedia.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../schroedinger/files/configure.ac.patch           | 21 ---------------------
 recipes-multimedia/schroedinger/schroedinger.inc    | 21 ---------------------
 .../schroedinger/schroedinger_1.0.9.bb              | 15 ---------------
 3 files changed, 57 deletions(-)
 delete mode 100644 recipes-multimedia/schroedinger/files/configure.ac.patch
 delete mode 100644 recipes-multimedia/schroedinger/schroedinger.inc
 delete mode 100644 recipes-multimedia/schroedinger/schroedinger_1.0.9.bb

diff --git a/recipes-multimedia/schroedinger/files/configure.ac.patch b/recipes-multimedia/schroedinger/files/configure.ac.patch
deleted file mode 100644
index 138b93d..0000000
--- a/recipes-multimedia/schroedinger/files/configure.ac.patch
+++ /dev/null
@@ -1,21 +0,0 @@
-Use yocto specific pkgconfig tool
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-Derived from meta-demo layer
-
-Upstream-Status: Inappropriate [configuration]
-
-Index: schroedinger-1.0.9/configure.ac
-===================================================================
---- schroedinger-1.0.9.orig/configure.ac
-+++ schroedinger-1.0.9/configure.ac
-@@ -54,7 +54,7 @@ if test "x${HAVE_ORC}" != xyes ; then
-   AC_ERROR([orc-0.4 >= $ORC_VER is required])
- fi
- SCHRO_PKG_DEPS="$SCHRO_PKG_DEPS orc-0.4 >= $ORC_VER"
--ORCC=`$PKG_CONFIG --variable=orcc orc-0.4`
-+ORCC=$STAGING_DIR`$PKG_CONFIG --variable=orcc orc-0.4`
- AC_SUBST(ORCC)
- 
- AC_ARG_WITH([thread],
diff --git a/recipes-multimedia/schroedinger/schroedinger.inc b/recipes-multimedia/schroedinger/schroedinger.inc
deleted file mode 100644
index 7e84eed..0000000
--- a/recipes-multimedia/schroedinger/schroedinger.inc
+++ /dev/null
@@ -1,21 +0,0 @@
-HOMEPAGE = "http://schrodinger.sourceforge.net/"
-LICENSE = "MPL-1.1 GPLv2 LGPLv2 MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=d91a46405fc074b88c963cc4f2a0aae9 \
-                    file://COPYING.GPL;md5=e181e3b7c66f5f96921d813c1074f833 \
-                    file://COPYING.LGPL;md5=38c893e21baec4cd75ad800ba9e2410a \
-                    file://COPYING.MIT;md5=8b345371b3536b4ce37ead1eafc88221 \
-                    file://COPYING.MPL;md5=0117647fecb9a932c25a7bbfc0333c37"
-
-DEPENDS = "liboil orc-native orc"
-
-PR = "r1"
-
-SRC_URI = "http://www.diracvideo.org/download/schroedinger/${P}.tar.gz;name=schroedingertargz"
-SRC_URI[schroedingertargz.md5sum] = "d67ec48b7c506db8c8b49156bf409e60"
-SRC_URI[schroedingertargz.sha256sum] = "345abcaa72ff0f2e9c1075e22f7141475ee4e6eea23a7f568b69ffc13cc1c723"
-SRC_URI += "file://configure.ac.patch"
-
-EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"
-
-inherit autotools
-
diff --git a/recipes-multimedia/schroedinger/schroedinger_1.0.9.bb b/recipes-multimedia/schroedinger/schroedinger_1.0.9.bb
deleted file mode 100644
index c8efe8c..0000000
--- a/recipes-multimedia/schroedinger/schroedinger_1.0.9.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-require schroedinger.inc
-
-PR = "r0"
-
-inherit autotools
-
-SRC_URI[schroedingertargz.md5sum] = "d67ec48b7c506db8c8b49156bf409e60"
-SRC_URI[schroedingertargz.sha256sum] = "345abcaa72ff0f2e9c1075e22f7141475ee4e6eea23a7f568b69ffc13cc1c723"
-
-AUTOTOOLS_STAGE_PKGCONFIG = "1"
-
-PACKAGES =+ "gst-plugin-schroedinger-dbg gst-plugin-schroedinger-dev gst-plugin-schroedinger"
-FILES_gst-plugin-schroedinger = "${libdir}/gstreamer-0.10/*.so"
-FILES_gst-plugin-schroedinger-dbg = "${libdir}/gstreamer-0.10/.debug"
-FILES_gst-plugin-schroedinger-dev = "${libdir}/gstreamer-0.10/*.*a"
-- 
1.8.1.2


