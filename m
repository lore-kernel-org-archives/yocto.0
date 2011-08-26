Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75AB0E01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 20:59:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Aug 2011 20:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,283,1312182000"; d="scan'208";a="45224527"
Received: from unknown (HELO localhost) ([10.255.13.254])
	by fmsmga001.fm.intel.com with ESMTP; 25 Aug 2011 20:59:30 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 22:59:00 -0500
Message-Id: <d40a58a2d2329e329c93461baf697fe27b4cd3fb.1314330614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
References: <d5130815aff9d230c44ed0be60ca06bb1cb4225a.1314330614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1314330614.git.tom.zanussi@intel.com>
References: <cover.1314330614.git.tom.zanussi@intel.com>
Subject: [PATCH 02/10] meta-crownbay: new recipe for emgd 1.8 driver binaries
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
X-List-Received-Date: Fri, 26 Aug 2011 03:59:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a new recipe for the emgd 1.8 driver binaries.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   35 ++++++++++++++++++++
 1 files changed, 35 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
new file mode 100644
index 0000000..8f309c9
--- /dev/null
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
@@ -0,0 +1,35 @@
+SUMMARY = "EMGD 1.8 xserver binaries"
+DESCRIPTION = "EMGD 1.8 includes some userspace binaries that use non-free \
+licensing.  Intel Open Source Technology Center unfortunately has no power \
+to change that, but tries to make their use as painless as possible.  Please \
+see the README in meta-crownbay/ for instructions on the (simple) manual \
+steps necessary to make the necessary binaries available to this recipe.  \
+Please do that before building an image."
+LICENSE = "Intel-binary-only"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
+
+FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.8"
+
+SRC_URI = "file://lib \
+           file://License.txt"
+
+FILES_${PN} += "${libdir}/dri ${libdir}/xorg/modules/drivers ${libdir}/*.so"
+FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
+
+S = "${WORKDIR}"
+
+do_install () {
+    install -d -m 0755                    ${D}/${libdir}/dri
+    install -d -m 0755                    ${D}/${libdir}/xorg/modules/drivers
+    install -m 0755 ${S}/lib/*.so.*       ${D}${libdir}/
+    install -m 0755 ${S}/lib/dri/*        ${D}${libdir}/dri/
+    install -m 0755 ${S}/lib/xorg/modules/drivers/* ${D}${libdir}/xorg/modules/drivers/
+
+    ln -sf libEGl.so.1                    ${D}${libdir}/libEGl.so
+    ln -sf libGLES_CM.so.1                ${D}${libdir}/libGLES_CM.so
+    ln -sf libGLESv2.so.2                 ${D}${libdir}/libGLESv2.so
+}
+
+LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


