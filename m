Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFB7F4C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 10:42:52 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jul 2011 08:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="27958580"
Received: from unknown (HELO localhost) ([10.255.14.7])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2011 08:42:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 10:42:45 -0500
Message-Id: <96c247dad88b9fc0159b2a929216876d9fbb06dc.1310657858.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1310657858.git.tom.zanussi@intel.com>
References: <cover.1310657858.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-emenlow: fix glx bug
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
X-List-Received-Date: Thu, 14 Jul 2011 15:42:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

AIGLX wasn't finding a couple libraries, causing errors such as Yocto
bug #1235 - 'Running glxinfo and glxgears commands failed.'.  This
provides symlinks allowing it to find the needed libraries.

Fixes [YOCTO #1235]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb         |    6 +++++-
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    3 ++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb b/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
index d0e14a5..5153054 100644
--- a/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
+++ b/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Userspace interface to kernel DRM services"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://MIT_License.txt;md5=732825ecdcf420261531d935fcd914a7"
-PR = "r4"
+PR = "r5"
 
 PROVIDES = "libdrm-poulsbo"
 
@@ -17,3 +17,7 @@ do_configure_prepend() {
 	sed -e 's/-ldrm/-ldrm_poulsbo/' -e 's/libdrm/libdrm_poulsbo/' \
 	    < ${S}/libdrm.pc.in > ${S}/libdrm_poulsbo.pc.in
 }
+
+do_install_append() {
+	ln -s libdrm_poulsbo.so.2.3.0 ${D}${libdir}/libdrm.so.2
+}
diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
index f4b43ab..0d675c6 100644
--- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
+++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "X11 drivers for Poulsbo (psb) 3D acceleration"
 # not Intel proprietary, but it has no obvious license attached to it.
 LICENSE = "Intel-binary-only"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/${PN}-${PV}/COPYING;md5=02c597a2f082b4581596065bb5a521a8"
-PR = "r6"
+PR = "r7"
 
 inherit autotools
 
@@ -29,6 +29,7 @@ do_install() {
 		${D}/${libdir}/xorg/modules/dri
 	install -m 0644 ${WORKDIR}/${PN}-${PV}/drivers/* \
 		${D}/${libdir}/xorg/modules/drivers
+	ln -s ${libdir}/xorg/modules/dri ${D}${libdir}/dri
 }
 
 S = "${WORKDIR}/${PN}-${PV}/mesa"
-- 
1.7.0.4


