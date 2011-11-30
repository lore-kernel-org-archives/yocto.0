Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D76E0072F
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 08:38:59 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Nov 2011 08:38:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,597,1315206000"; d="scan'208";a="80705162"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by azsmga001.ch.intel.com with ESMTP; 30 Nov 2011 08:38:58 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2011 10:38:54 -0600
Message-Id: <36ad680b04280a215a3deef5dd4f7789ba640a2c.1322670614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
References: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322670614.git.tom.zanussi@intel.com>
References: <cover.1322670614.git.tom.zanussi@intel.com>
Subject: [PATCH 2/6] libva: upgrade to 1.0.12 and factor out common settings
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
X-List-Received-Date: Wed, 30 Nov 2011 16:39:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

EMGD 1.8 requires libva-1.0.12, so upgrade to that version, and we
don't actually need the 1.0.10 recipe, so remove it.

This also adds -dbg and -dev packaging fixes to fix QA problems,
removes some unnecessary settings, updates checksums, etc.

Also create and use a common libva.inc, as we'll soon be adding a more
updated version of libva to the current version.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../libva/{libva_1.0.10.bb => libva.inc}           |   19 +++++++++++--------
 common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ++++++++
 2 files changed, 19 insertions(+), 8 deletions(-)
 rename common/recipes-multimedia/libva/{libva_1.0.10.bb => libva.inc} (78%)
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb

diff --git a/common/recipes-multimedia/libva/libva_1.0.10.bb b/common/recipes-multimedia/libva/libva.inc
similarity index 78%
rename from common/recipes-multimedia/libva/libva_1.0.10.bb
rename to common/recipes-multimedia/libva/libva.inc
index 0cd0444..93b3cae 100644
--- a/common/recipes-multimedia/libva/libva_1.0.10.bb
+++ b/common/recipes-multimedia/libva/libva.inc
@@ -17,21 +17,24 @@ SECTION = "x11"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=2e48940f94acb0af582e5ef03537800f"
 
-PR = "r1"
+INC_PR = "r0"
 
 DEPENDS = "libxext libxfixes libdrm"
 
-SRC_URI = "http://cgit.freedesktop.org/libva/snapshot/libva-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "959de03d47654adab855e10bff614df3"
-SRC_URI[sha256sum] = "05f757f0043dce9f753d354d15e0cb772b1240cc9d29d26bbb5526285a203693"
-
 inherit autotools pkgconfig
 
-LEAD_SONAME = "libva.so"
-
 PACKAGES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+PACKAGES =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
+
 RDEPENDS_${PN} =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+
+FILES_${PN}-dbg += "${libdir}/dri/.debug"
+FILES_${PN} += "${libdir}/dri"
+
+FILES_${PN}-x11-dev =+ "${libdir}/libva-x11.so"
+FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi.so"
+FILES_${PN}-glx-dev =+ "${libdir}/libva-glx.so"
+FILES_${PN}-egl-dev =+ "${libdir}/libva-egl.so"
 FILES_${PN}-x11 =+ "${libdir}/libva-x11.*"
 FILES_${PN}-tpi =+ "${libdir}/libva-tpi.*"
 FILES_${PN}-glx =+ "${libdir}/libva-glx.*"
diff --git a/common/recipes-multimedia/libva/libva_1.0.12.bb b/common/recipes-multimedia/libva/libva_1.0.12.bb
new file mode 100644
index 0000000..490e60f
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva_1.0.12.bb
@@ -0,0 +1,8 @@
+require libva.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI = "http://cgit.freedesktop.org/libva/snapshot/libva-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "84408a0746a63b8cf308dc7b9f2451cf"
+SRC_URI[sha256sum] = "e80aae68fc78d237d046be6525d333f072fd57fe4f4d8f981e869703ebfee8f5"
-- 
1.7.0.4


