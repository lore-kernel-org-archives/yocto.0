Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A0AE0136A
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:32:40 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Jan 2012 11:32:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="52574410"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Jan 2012 11:32:39 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2012 13:32:39 -0600
Message-Id: <7317bc9b1927ece936575c5faf1a97f79800872f.1325525852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1325525852.git.tom.zanussi@intel.com>
References: <cover.1325525852.git.tom.zanussi@intel.com>
Subject: [PATCH 1/3] meta-intel: new recipe for emgd 1.10 driver
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
X-List-Received-Date: Mon, 02 Jan 2012 19:32:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds a new recipe for the emgd 1.10 driver.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.10.bb           |   97 ++++++++++++++++++++
 1 files changed, 97 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
new file mode 100644
index 0000000..2ef3cff
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
@@ -0,0 +1,97 @@
+SUMMARY = "EMGD 1.10 xserver binaries"
+DESCRIPTION = "EMGD 1.10 includes some userspace binaries that use non-free \
+licensing, which are now available via a non-click-through downloadable \
+tarball, and is what this recipe now uses.  Since it is a non-free license, \
+this recipe is marked as 'License_emgd-driver-bin_1.10' and you need to add \
+to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.10\" to your \
+local.conf in order to enable it in a build."
+LICENSE = "Intel-binary-only"
+LICENSE_FLAGS = "License_${PN}_${PV}"
+PR = "r0"
+
+EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
+EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
+EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
+
+LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
+
+DEPENDS = "rpm-native xz-native"
+
+SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.tgz"
+
+SRC_URI[md5sum] = "e4a38d9efa0b086ae21b68145c4db4e9"
+SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
+
+FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
+FILES_${PN}-dev += "${libdir}/dri ${libdir}/xorg/modules/drivers"
+FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
+
+S = "${WORKDIR}/${EMGD_RPM_DIR}"
+
+do_install () {
+    # A gstreamer VA buffer library
+    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-vabuffer*.rpm | cpio -id
+
+    # MIX Common contains common classes, datatype, header files used by other MIX components
+    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixcommon*.rpm | cpio -id
+
+    # MIX Video Bitstream Parser is an user library interface for various video format bitstream parsing
+    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixvbp*.rpm | cpio -id
+
+    # MIX Video is an user library interface for various video codecs available on the platform.
+    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixvideo*.rpm | cpio -id
+
+    install -d -m 0755                                    ${D}${libdir}/gstreamer-0.10
+    install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
+
+    # A gstreamer plugin that uses MIX Video for hardware accelerated video decoding and rendering.
+    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-plugins-mixvideo*.rpm | cpio -id
+
+    # A collection of gstreamer plugins that uses VA libraries for hardware accelerated video rendering and text overlay.
+    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-plugins-va*.rpm | cpio -id
+
+    install -m 0755 ${S}/usr/lib/gstreamer-0.10/*         ${D}${libdir}/gstreamer-0.10/
+
+    # EMGD runtime graphics libraries
+    rpm2cpio ${S}/emgd-bin*.rpm | xz -d | cpio -id
+
+    install -d -m 0755                                    ${D}${libdir}/dri
+    install -d -m 0755                                    ${D}${libdir}/xorg/modules/drivers
+    install -d -m 0755                                    ${D}${sysconfdir}
+    install -d -m 0755                                    ${D}${mandir}/man4
+    install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/
+    install -m 0755 ${S}/usr/lib/dri/*                    ${D}${libdir}/dri/
+    install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   ${D}${libdir}/xorg/modules/drivers/
+    install -m 0755 ${S}/etc/*                            ${D}${sysconfdir}/
+    install -m 0755 ${S}/usr/share/man/man4/*             ${D}${mandir}/man4/
+
+    # emgdgui is a GUI tool to configure the emgd driver
+    rpm2cpio ${S}/emgd-gui*.rpm | xz -d | cpio -id
+
+    install -d -m 0755                                    ${D}/usr/share/applications
+    install -d -m 0755                                    ${D}${bindir}
+    install -m 0755 ${S}/usr/share/applications/*         ${D}/usr/share/applications/
+    install -m 0755 ${S}/usr/bin/*                        ${D}${bindir}/
+
+    # Khronos development headers needed for EGL, OpenGL-ES, and OpenVG development
+    rpm2cpio ${S}/emgd-devel*.rpm | xz -d | cpio -id
+
+    install -d -m 0755                                    ${D}${includedir}/EGL
+    install -m 0755 ${S}/usr/include/EGL/*.h              ${D}${includedir}/EGL/
+    install -d -m 0755                                    ${D}${includedir}/GLES
+    install -m 0755 ${S}/usr/include/GLES/*.h             ${D}${includedir}/GLES/
+    install -d -m 0755                                    ${D}${includedir}/GLES2
+    install -m 0755 ${S}/usr/include/GLES2/*.h            ${D}${includedir}/GLES2/
+    install -d -m 0755                                    ${D}${includedir}/KHR
+    install -m 0755 ${S}/usr/include/KHR/*.h              ${D}${includedir}/KHR/
+    install -d -m 0755                                    ${D}${includedir}/VG
+    install -m 0755 ${S}/usr/include/VG/*.h               ${D}${includedir}/VG/
+
+    ln -sf libEGL.so.1                                    ${D}${libdir}/libEGL.so
+    ln -sf libGLES_CM.so.1                                ${D}${libdir}/libGLES_CM.so
+    ln -sf libGLESv2.so.2                                 ${D}${libdir}/libGLESv2.so
+    ln -sf libOpenVG.so.1                                 ${D}${libdir}/libOpenVG.so
+    ln -sf libOpenVGU.so.1                                ${D}${libdir}/libOpenVGU.so
+}
+
+LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


