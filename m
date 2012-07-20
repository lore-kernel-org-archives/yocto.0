Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69140E002A7
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 10:02:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jul 2012 10:02:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="174829879"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by orsmga002.jf.intel.com with ESMTP; 20 Jul 2012 10:02:55 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 20 Jul 2012 12:02:54 -0500
Message-Id: <961f835e4f5dd2d02b34b7fce13316ec7b0bf1c4.1342803443.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1342803443.git.tom.zanussi@intel.com>
References: <cover.1342803443.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] emgd-driver-bin: remove FILES_${PN}-dev addition
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
X-List-Received-Date: Fri, 20 Jul 2012 17:02:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The package reordering patches exposed a problem in that the files
specified in the FILES_${PN}-dev shouldn't really be put in the -dev
package in the first place - this removes them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.10.bb           |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
index 53a43cd..5779e5d 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
@@ -7,7 +7,7 @@ to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.10\" to your \
 local.conf in order to enable it in a build."
 LICENSE = "Intel-binary-only"
 LICENSE_FLAGS = "license_${PN}_${PV}"
-PR = "r0"
+PR = "r1"
 
 EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
 EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
@@ -26,7 +26,6 @@ SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da
 INSANE_SKIP_${PN} = "ldflags"
 
 FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
-FILES_${PN}-dev += "${libdir}/dri ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
 
 S = "${WORKDIR}/${EMGD_RPM_DIR}"
-- 
1.7.0.4


