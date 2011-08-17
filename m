Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CC73E0121F
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:51:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Aug 2011 09:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="40658081"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2011 09:51:10 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:51:03 -0500
Message-Id: <3bf741044e673834f0316321fcaef4e787bf1aca.1313598804.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313598804.git.tom.zanussi@intel.com>
References: <cover.1313598804.git.tom.zanussi@intel.com>
Subject: [PATCH 02/12] meta-crownbay: new recipe for emgd 1.8 driver binaries
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
X-List-Received-Date: Wed, 17 Aug 2011 16:51:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a new recipe for the emgd 1.8 driver binaries.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   36 ++++++++++++++++++++
 1 files changed, 36 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
new file mode 100644
index 0000000..64578cc
--- /dev/null
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
@@ -0,0 +1,36 @@
+SUMMARY = "EMGD 1.8 xserver binaries"
+DESCRIPTION = "EMGD 1.8 includes some userspace binaries that use non-free \
+licensing, which are now available via a non-click-through downloadable \
+tarball, and is what this recipe now uses.  Since it is a non-free license, \
+this recipe is marked as 'commercial' and you need to add COMMERCIAL_LICENSE \
+= \"\" in order to enable it in a build."
+LICENSE = "Intel-binary-only"
+PR = "r0"
+
+EMGD_LICDIR = "IEMGD_HEAD_Linux/License"
+EMGD_RPMDIR = "IEMGD_HEAD_Linux/MeeGo1.2"
+
+LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LICDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
+
+SRC_URI = "http://edc.intel.com/App_Shared/Downloads/Lin_EMGD_1_8_RC_2032.tgz"
+
+FILES_${PN} += "${libdir}/dri ${libdir}/xorg/modules/drivers"
+FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
+
+S = "${WORKDIR}/${EMGD_RPMDIR}"
+
+do_install () {
+    rpm2cpio.sh ${S}/emgd-bin*.rpm | cpio -id
+
+    install -d -m 0755                    ${D}/${libdir}/dri
+    install -d -m 0755                    ${D}/${libdir}/xorg/modules/drivers
+    install -m 0755 ${S}/usr/lib/*.so.*   ${D}${libdir}/
+    install -m 0755 ${S}/usr/lib/dri/*    ${D}${libdir}/dri/
+    install -m 0755 ${S}/usr/lib/xorg/modules/drivers/* ${D}${libdir}/xorg/modules/drivers/
+
+    ln -sf libEGl.so.1                    ${D}${libdir}/libEGl.so
+    ln -sf libGLES_CM.so.1                ${D}${libdir}/libGLES_CM.so
+    ln -sf libGLESv2.so.2                 ${D}${libdir}/libGLESv2.so
+}
+
+LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


