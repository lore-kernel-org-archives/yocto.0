Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61636E0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 15:35:41 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Sep 2012 15:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,439,1344236400"; d="scan'208";a="146090558"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Sep 2012 15:35:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Sun, 16 Sep 2012 15:27:08 -0700
Message-Id: <0d86ea6eeb8e1fdc17aaa4200cb11981f500c728.1347834237.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <849041c84291bc274805ae375232e7d2eecbd0e7.1347834237.git.nitin.a.kamble@intel.com>
References: <849041c84291bc274805ae375232e7d2eecbd0e7.1347834237.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1347834237.git.nitin.a.kamble@intel.com>
References: <cover.1347834237.git.nitin.a.kamble@intel.com>
Subject: [PATCH 2/2] emgd-driver-bin: avoid rebuilding issue of the recipe
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
X-List-Received-Date: Mon, 17 Sep 2012 22:35:41 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This avoids errors like this:
| cpio: ./usr/lib/libgstvabuffer.so.0 not created: newer or same age version exists
| install: cannot stat `/srv/home/nitin/builds/build-crownbay/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libGLES_CM.so': No such file or directory

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xorg-driver/emgd-driver-bin_1.14.bb            |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
index 2464c38..6ea6278 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
@@ -7,7 +7,7 @@ to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
 local.conf in order to enable it in a build."
 LICENSE = "Intel-binary-only"
 LICENSE_FLAGS = "license_${PN}_${PV}"
-PR = "r2"
+PR = "r3"
 
 EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
@@ -38,6 +38,9 @@ FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug $
 S = "${WORKDIR}/${EMGD_RPM_DIR}"
 
 do_install () {
+    # cleanup previous files if any
+    rm -rf usr 
+
     # A gstreamer VA buffer library
     rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-vabuffer*.rpm | cpio -id
 
-- 
1.7.3.4


