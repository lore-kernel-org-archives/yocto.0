Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0182CE0136D
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:32:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Jan 2012 11:32:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102426294"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by fmsmga001.fm.intel.com with ESMTP; 02 Jan 2012 11:32:45 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2012 13:32:41 -0600
Message-Id: <5243a31998c9a5110d633960248704420c1e3d57.1325525852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7317bc9b1927ece936575c5faf1a97f79800872f.1325525852.git.tom.zanussi@intel.com>
References: <7317bc9b1927ece936575c5faf1a97f79800872f.1325525852.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1325525852.git.tom.zanussi@intel.com>
References: <cover.1325525852.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] meta-intel: remove emgd-1.8
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
X-List-Received-Date: Mon, 02 Jan 2012 19:32:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

emgd-1.8 is now obsoleted by emgd-1.10, so remove support for it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   39 --------------------
 1 files changed, 0 insertions(+), 39 deletions(-)
 delete mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
 delete mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore b/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
deleted file mode 100644
index e69de29..0000000
diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
deleted file mode 100644
index bb98962..0000000
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
+++ /dev/null
@@ -1,39 +0,0 @@
-SUMMARY = "EMGD 1.8 xserver binaries"
-DESCRIPTION = "EMGD 1.8 includes some userspace binaries that use non-free \
-licensing.  Intel Open Source Technology Center unfortunately has no power \
-to change that, but tries to make their use as painless as possible.  Please \
-see the README in meta-crownbay/ for instructions on the (simple) manual \
-steps necessary to make the necessary binaries available to this recipe.  \
-Please do that before building an image."
-LICENSE = "Intel-binary-only"
-PR = "r8"
-
-LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
-
-FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.8"
-
-SRC_URI = "file://lib \
-           file://License.txt"
-
-FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
-FILES_${PN}-dev += "${libdir}/*.so"
-FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
-
-S = "${WORKDIR}"
-
-do_install () {
-    install -d -m 0755                              ${D}/${libdir}/dri
-    install -d -m 0755                              ${D}/${libdir}/gstreamer-0.10
-    install -d -m 0755                              ${D}/${libdir}/xorg/modules/drivers
-    install -m 0755 ${S}/lib/*.so.*                 ${D}${libdir}/
-    install -m 0755 ${S}/lib/dri/*                  ${D}${libdir}/dri/
-    install -m 0755 ${S}/lib/gstreamer-0.10/*       ${D}${libdir}/gstreamer-0.10/
-    install -m 0755 ${S}/lib/xorg/modules/drivers/* ${D}${libdir}/xorg/modules/drivers/
-
-    ln -sf libEGL.so.1                              ${D}${libdir}/libEGL.so
-    ln -sf libGLES_CM.so.1                          ${D}${libdir}/libGLES_CM.so
-    ln -sf libGLESv2.so.2                           ${D}${libdir}/libGLESv2.so
-    ln -sf libEMGDScopeServices.so.1.5.15.3226      ${D}${libdir}/libPVRScopeServices.so
-}
-
-LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


