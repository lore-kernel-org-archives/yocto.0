Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E3CCE011C5
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 18:17:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 18:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="224670050"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2012 18:17:25 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Tue,  9 Oct 2012 18:16:20 -0700
Message-Id: <fbd77f1987b6a39adf165d69f01328899b26def2.1349831664.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <35b1c05ce67d1e95bb471f3db56a14c9c519498b.1349831664.git.nitin.a.kamble@intel.com>
References: <35b1c05ce67d1e95bb471f3db56a14c9c519498b.1349831664.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1349831664.git.nitin.a.kamble@intel.com>
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
Subject: [PATCHv2 3/5] emgd-driver_bin_1.10: Remove in favor of 1.14
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
X-List-Received-Date: Wed, 10 Oct 2012 01:17:26 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

All BSPs have been migrated to 1.14, we can now safely retire 1.10

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xorg-driver/emgd-driver-bin_1.10.bb            |   93 --------------------
 1 files changed, 0 insertions(+), 93 deletions(-)
 delete mode 100644 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb

diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
deleted file mode 100644
index 6d80bee..0000000
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
+++ /dev/null
@@ -1,93 +0,0 @@
-SUMMARY = "EMGD 1.10 xserver binaries"
-DESCRIPTION = "EMGD 1.10 includes some userspace binaries that use non-free \
-licensing, which are now available via a non-click-through downloadable \
-tarball, and is what this recipe now uses.  Since it is a non-free license, \
-this recipe is marked as 'License_emgd-driver-bin_1.10' and you need to add \
-to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.10\" to your \
-local.conf in order to enable it in a build."
-LICENSE = "Intel-binary-only"
-LICENSE_FLAGS = "license_${PN}_${PV}"
-PR = "r1"
-
-EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
-EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
-EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
-
-LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
-
-DEPENDS = "rpm-native xz-native"
-
-SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.tgz"
-
-SRC_URI[md5sum] = "e4a38d9efa0b086ae21b68145c4db4e9"
-SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
-
-# These are closed binaries generated elsewhere so don't check ldflags
-INSANE_SKIP_${PN} = "ldflags"
-# Inhibit warnings about files being stripped, we can't do anything about it.
-INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
-
-FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
-FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
-
-S = "${WORKDIR}/${EMGD_RPM_DIR}"
-
-do_install () {
-    # A gstreamer VA buffer library
-    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-vabuffer*.rpm | cpio -id
-
-    # MIX Common contains common classes, datatype, header files used by other MIX components
-    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixcommon*.rpm | cpio -id
-
-    # MIX Video Bitstream Parser is an user library interface for various video format bitstream parsing
-    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixvbp*.rpm | cpio -id
-
-    # MIX Video is an user library interface for various video codecs available on the platform.
-    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixvideo*.rpm | cpio -id
-
-    install -d -m 0755                                    ${D}${libdir}/gstreamer-0.10
-    install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
-
-    # A gstreamer plugin that uses MIX Video for hardware accelerated video decoding and rendering.
-    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-plugins-mixvideo*.rpm | cpio -id
-
-    # A collection of gstreamer plugins that uses VA libraries for hardware accelerated video rendering and text overlay.
-    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-plugins-va*.rpm | cpio -id
-
-    install -m 0755 ${S}/usr/lib/gstreamer-0.10/*         ${D}${libdir}/gstreamer-0.10/
-
-    # EMGD runtime graphics libraries
-    rpm2cpio ${S}/emgd-bin*.rpm | xz -d | cpio -id
-
-    install -d -m 0755                                    ${D}${libdir}/dri
-    install -d -m 0755                                    ${D}${libdir}/xorg/modules/drivers
-    install -d -m 0755                                    ${D}${sysconfdir}
-    install -d -m 0755                                    ${D}${mandir}/man4
-    install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/
-    install -m 0755 ${S}/usr/lib/dri/*                    ${D}${libdir}/dri/
-    install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   ${D}${libdir}/xorg/modules/drivers/
-    install -m 0755 ${S}/etc/*                            ${D}${sysconfdir}/
-    install -m 0755 ${S}/usr/share/man/man4/*             ${D}${mandir}/man4/
-
-    # Khronos development headers needed for EGL, OpenGL-ES, and OpenVG development
-    rpm2cpio ${S}/emgd-devel*.rpm | xz -d | cpio -id
-
-    install -d -m 0755                                    ${D}${includedir}/EGL
-    install -m 0755 ${S}/usr/include/EGL/*.h              ${D}${includedir}/EGL/
-    install -d -m 0755                                    ${D}${includedir}/GLES
-    install -m 0755 ${S}/usr/include/GLES/*.h             ${D}${includedir}/GLES/
-    install -d -m 0755                                    ${D}${includedir}/GLES2
-    install -m 0755 ${S}/usr/include/GLES2/*.h            ${D}${includedir}/GLES2/
-    install -d -m 0755                                    ${D}${includedir}/KHR
-    install -m 0755 ${S}/usr/include/KHR/*.h              ${D}${includedir}/KHR/
-    install -d -m 0755                                    ${D}${includedir}/VG
-    install -m 0755 ${S}/usr/include/VG/*.h               ${D}${includedir}/VG/
-
-    ln -sf libEGL.so.1                                    ${D}${libdir}/libEGL.so
-    ln -sf libGLES_CM.so.1                                ${D}${libdir}/libGLES_CM.so
-    ln -sf libGLESv2.so.2                                 ${D}${libdir}/libGLESv2.so
-    ln -sf libOpenVG.so.1                                 ${D}${libdir}/libOpenVG.so
-    ln -sf libOpenVGU.so.1                                ${D}${libdir}/libOpenVGU.so
-}
-
-LEAD_SONAME = "libEGL.so"
-- 
1.7.3.4


