Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A72DE00349
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:49:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2012 07:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170406884"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2012 07:49:48 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com, tom.zanussi@intel.com
Date: Wed, 18 Jul 2012 07:49:18 -0700
Message-Id: <e49b384a2897473fcb50846cbd8facb7e95e826f.1342622602.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
References: <2675de6e815486b6609b3ec9c8492dbf806e2c49.1342622602.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1342622602.git.nitin.a.kamble@intel.com>
References: <cover.1342622602.git.nitin.a.kamble@intel.com>
Subject: [PATCH 3/7] emgd-driver-bin: upgrade from 1.10 to 1.14
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
X-List-Received-Date: Thu, 19 Jul 2012 14:49:49 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

1.14 is the latest released driver for emgd. This change is tested on crownbay machine.

Add runtime dependency to libxcb-dri2

Otherwise the libxcb-dri2.so is not getting installed, and video
acceleration of emgd does not work. It is dynamic dependency of
emgd_drv_video.so

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (92%)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
similarity index 92%
rename from common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
rename to common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
index 53a43cd..1db92f6 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
@@ -1,9 +1,9 @@
-SUMMARY = "EMGD 1.10 xserver binaries"
-DESCRIPTION = "EMGD 1.10 includes some userspace binaries that use non-free \
+SUMMARY = "EMGD 1.14 xserver binaries"
+DESCRIPTION = "EMGD 1.14 includes some userspace binaries that use non-free \
 licensing, which are now available via a non-click-through downloadable \
 tarball, and is what this recipe now uses.  Since it is a non-free license, \
-this recipe is marked as 'License_emgd-driver-bin_1.10' and you need to add \
-to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.10\" to your \
+this recipe is marked as 'License_emgd-driver-bin_1.14' and you need to add \
+to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
 local.conf in order to enable it in a build."
 LICENSE = "Intel-binary-only"
 LICENSE_FLAGS = "license_${PN}_${PV}"
@@ -16,8 +16,9 @@ EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
 
 DEPENDS = "rpm-native xz-native"
+RDEPENDS = "libxcb-dri2"
 
-SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.tgz"
+SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_IEMGD_1_14_GOLD_2443.tgz"
 
 SRC_URI[md5sum] = "e4a38d9efa0b086ae21b68145c4db4e9"
 SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
@@ -27,7 +28,7 @@ INSANE_SKIP_${PN} = "ldflags"
 
 FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dev += "${libdir}/dri ${libdir}/xorg/modules/drivers"
-FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
+FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/gstreamer-0.10/.debug"
 
 S = "${WORKDIR}/${EMGD_RPM_DIR}"
 
-- 
1.7.3.4


