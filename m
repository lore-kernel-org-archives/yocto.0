Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B40E00739
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 13:35:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2011 13:35:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,280,1320652800"; d="scan'208";a="81253562"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2011 13:35:04 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 15:35:03 -0600
Message-Id: <373a155ff3039f93e5b178cf30d7d5b4c9f1722f.1322775053.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
References: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322775053.git.tom.zanussi@intel.com>
References: <cover.1322775053.git.tom.zanussi@intel.com>
Subject: [PATCH 3/6] emgd-driver-bin: add video components
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
X-List-Received-Date: Thu, 01 Dec 2011 21:35:05 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds the video binaries extracted from the following EMGD 1.8
binary rpms (emgd/1.8.2032/IEMGD_HEAD_Linux/common/video_plugin):

gst-plugins-mixvideo-0.10.30-1.i586.rpm
gst-plugins-va-0.10.7MFLD-1.i586.rpm
gst-vabuffer-0.10.5MFLD-1.i586.rpm
mixcommon-0.1.9-1.i586.rpm
mixvbp-0.1.24-1.i586.rpm
mixvideo-0.1.31-1.i586.rpm

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   22 ++++++++++---------
 1 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
index 8dc43ea..bb98962 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
@@ -6,7 +6,7 @@ see the README in meta-crownbay/ for instructions on the (simple) manual \
 steps necessary to make the necessary binaries available to this recipe.  \
 Please do that before building an image."
 LICENSE = "Intel-binary-only"
-PR = "r7"
+PR = "r8"
 
 LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
 
@@ -15,23 +15,25 @@ FILESPATH = "${FILE_DIRNAME}/emgd-driver-bin-1.8"
 SRC_URI = "file://lib \
            file://License.txt"
 
-FILES_${PN} += "${libdir}/dri ${libdir}/xorg/modules/drivers"
+FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dev += "${libdir}/*.so"
 FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
 
 S = "${WORKDIR}"
 
 do_install () {
-    install -d -m 0755                    ${D}/${libdir}/dri
-    install -d -m 0755                    ${D}/${libdir}/xorg/modules/drivers
-    install -m 0755 ${S}/lib/*.so.*       ${D}${libdir}/
-    install -m 0755 ${S}/lib/dri/*        ${D}${libdir}/dri/
+    install -d -m 0755                              ${D}/${libdir}/dri
+    install -d -m 0755                              ${D}/${libdir}/gstreamer-0.10
+    install -d -m 0755                              ${D}/${libdir}/xorg/modules/drivers
+    install -m 0755 ${S}/lib/*.so.*                 ${D}${libdir}/
+    install -m 0755 ${S}/lib/dri/*                  ${D}${libdir}/dri/
+    install -m 0755 ${S}/lib/gstreamer-0.10/*       ${D}${libdir}/gstreamer-0.10/
     install -m 0755 ${S}/lib/xorg/modules/drivers/* ${D}${libdir}/xorg/modules/drivers/
 
-    ln -sf libEGL.so.1                    ${D}${libdir}/libEGL.so
-    ln -sf libGLES_CM.so.1                ${D}${libdir}/libGLES_CM.so
-    ln -sf libGLESv2.so.2                 ${D}${libdir}/libGLESv2.so
-    ln -sf libEMGDScopeServices.so.1.5.15.3226 ${D}${libdir}/libPVRScopeServices.so
+    ln -sf libEGL.so.1                              ${D}${libdir}/libEGL.so
+    ln -sf libGLES_CM.so.1                          ${D}${libdir}/libGLES_CM.so
+    ln -sf libGLESv2.so.2                           ${D}${libdir}/libGLESv2.so
+    ln -sf libEMGDScopeServices.so.1.5.15.3226      ${D}${libdir}/libPVRScopeServices.so
 }
 
 LEAD_SONAME = "libEGL.so"
-- 
1.7.0.4


