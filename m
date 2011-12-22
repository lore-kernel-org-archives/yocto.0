Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3EB4E006B5
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 19:51:08 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2011 19:51:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="89176267"
Received: from unknown (HELO localhost) ([10.255.12.82])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2011 19:51:08 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 21 Dec 2011 21:48:29 -0600
Message-Id: <950dae279cb0925fe80ad1f10be7eb36bc45eea5.1324525137.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1324525136.git.tom.zanussi@intel.com>
References: <cover.1324525136.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel: add PROVIDES for extra packages provided by libva
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
X-List-Received-Date: Thu, 22 Dec 2011 03:51:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

libva provides some extra packages such as libva-glx.  Add PROVIDES
for them so the rest of the build system knows about it.

We also need to add the dependency relationships between libva,
libva-x11, and libva-glx.

Also remove the bogus RDEPENDS on the display components.

Also libva-glx depends on mesa-dri - if it's not there, libva-glx
won't be built.

Also, add missing -dev and -dbg packaging.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/libva/libva.inc |   42 +++++++++++++++++++++-------
 1 files changed, 31 insertions(+), 11 deletions(-)

diff --git a/common/recipes-multimedia/libva/libva.inc b/common/recipes-multimedia/libva/libva.inc
index 93b3cae..d897f36 100644
--- a/common/recipes-multimedia/libva/libva.inc
+++ b/common/recipes-multimedia/libva/libva.inc
@@ -17,25 +17,45 @@ SECTION = "x11"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=2e48940f94acb0af582e5ef03537800f"
 
-INC_PR = "r0"
+INC_PR = "r1"
 
-DEPENDS = "libxext libxfixes libdrm"
+DEPENDS = "libxext libxfixes libdrm mesa-dri"
 
 inherit autotools pkgconfig
 
 PACKAGES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+PROVIDES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
 PACKAGES =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
+PACKAGES =+ "${PN}-x11-dbg ${PN}-tpi-dbg ${PN}-glx-dbg ${PN}-egl-dbg"
+RPROVIDES_${PN}-dev =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
 
-RDEPENDS_${PN} =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
+RDEPENDS_${PN}-tpi =+ "${PN}"
+RDEPENDS_${PN}-x11 =+ "${PN}"
+RDEPENDS_${PN}-glx =+ "${PN}-x11"
+RDEPENDS_${PN}-egl =+ "${PN}-x11"
 
 FILES_${PN}-dbg += "${libdir}/dri/.debug"
 FILES_${PN} += "${libdir}/dri"
 
-FILES_${PN}-x11-dev =+ "${libdir}/libva-x11.so"
-FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi.so"
-FILES_${PN}-glx-dev =+ "${libdir}/libva-glx.so"
-FILES_${PN}-egl-dev =+ "${libdir}/libva-egl.so"
-FILES_${PN}-x11 =+ "${libdir}/libva-x11.*"
-FILES_${PN}-tpi =+ "${libdir}/libva-tpi.*"
-FILES_${PN}-glx =+ "${libdir}/libva-glx.*"
-FILES_${PN}-egl =+ "${libdir}/libva-egl.*"
+FILES_${PN}-x11 =+ "${libdir}/libva-x11*${SOLIBS}"
+FILES_${PN}-tpi =+ "${libdir}/libva-tpi*${SOLIBS}"
+FILES_${PN}-glx =+ "${libdir}/libva-glx*${SOLIBS}"
+FILES_${PN}-egl =+ "${libdir}/libva-egl*${SOLIBS}"
+
+FILES_${PN}-x11-dev =+ "${libdir}/libva-x11*${SOLIBSDEV}"
+FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi*${SOLIBSDEV}"
+FILES_${PN}-glx-dev =+ "${libdir}/libva-glx*${SOLIBSDEV}"
+FILES_${PN}-egl-dev =+ "${libdir}/libva-egl*${SOLIBSDEV}"
+FILES_${PN}-x11-dev =+ "${libdir}/libva-x11*.la"
+FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi*.la"
+FILES_${PN}-glx-dev =+ "${libdir}/libva-glx*.la"
+FILES_${PN}-egl-dev =+ "${libdir}/libva-egl*.la"
+FILES_${PN}-x11-dev =+ "${libdir}/pkgconfig/libva-x11*.pc"
+FILES_${PN}-tpi-dev =+ "${libdir}/pkgconfig/libva-tpi*.pc"
+FILES_${PN}-glx-dev =+ "${libdir}/pkgconfig/libva-glx*.pc"
+FILES_${PN}-egl-dev =+ "${libdir}/pkgconfig/libva-egl*.pc"
+
+FILES_${PN}-x11-dbg =+ "${libdir}/.debug/libva-x11.*"
+FILES_${PN}-tpi-dbg =+ "${libdir}/.debug/libva-tpi.*"
+FILES_${PN}-glx-dbg =+ "${libdir}/.debug/libva-glx.*"
+FILES_${PN}-egl-dbg =+ "${libdir}/.debug/libva-egl.*"
-- 
1.7.0.4


