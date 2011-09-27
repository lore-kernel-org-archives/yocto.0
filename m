Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22AB5E006E0
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 20:58:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Sep 2011 20:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="56858429"
Received: from unknown (HELO localhost) ([10.255.14.185])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2011 20:58:56 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon, 26 Sep 2011 22:57:44 -0500
Message-Id: <9639c9ceb8b412d861920c9585f9ca6297e290f3.1317095647.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317095647.git.tom.zanussi@intel.com>
References: <cover.1317095647.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel: fix symlink typo and QA checks in emgd-driver-bin
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
X-List-Received-Date: Tue, 27 Sep 2011 03:58:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There was a typo in the libEGL.so symlink creation - this fixes it.

It also adds a missing symlink for scope services, and fixes the QA
warnings for 'non-dev package contains symlink .so...'.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
index 8f309c9..88e8a55 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
@@ -6,7 +6,7 @@ see the README in meta-crownbay/ for instructions on the (simple) manual \
 steps necessary to make the necessary binaries available to this recipe.  \
 Please do that before building an image."
 LICENSE = "Intel-binary-only"
-PR = "r0"
+PR = "r1"
 
 LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
 
@@ -15,7 +15,8 @@ FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.8"
 SRC_URI = "file://lib \
            file://License.txt"
 
-FILES_${PN} += "${libdir}/dri ${libdir}/xorg/modules/drivers ${libdir}/*.so"
+FILES_${PN} += "${libdir}/dri ${libdir}/xorg/modules/drivers"
+FILES_${PN}-dev += "${libdir}/*.so"
 FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
 
 S = "${WORKDIR}"
@@ -27,9 +28,10 @@ do_install () {
     install -m 0755 ${S}/lib/dri/*        ${D}${libdir}/dri/
     install -m 0755 ${S}/lib/xorg/modules/drivers/* ${D}${libdir}/xorg/modules/drivers/
 
-    ln -sf libEGl.so.1                    ${D}${libdir}/libEGl.so
+    ln -sf libEGL.so.1                    ${D}${libdir}/libEGL.so
     ln -sf libGLES_CM.so.1                ${D}${libdir}/libGLES_CM.so
     ln -sf libGLESv2.so.2                 ${D}${libdir}/libGLESv2.so
+    ln -sf libEMGDScopeServices.so.1.5.15.3226 ${D}${libdir}/libPVRScopeServices.so
 }
 
 LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


