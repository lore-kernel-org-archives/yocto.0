Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5D9EE0127A
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 12:53:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Sep 2011 12:53:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,463,1312182000"; d="scan'208";a="68753128"
Received: from unknown (HELO localhost) ([10.255.14.216])
	by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2011 12:53:47 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2011 14:53:45 -0500
Message-Id: <2097a9e792abf274c1316cf9561517122a61aa7b.1317325799.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1317325799.git.tom.zanussi@intel.com>
References: <cover.1317325799.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] xpsb-glx: Move the pkgconfig file(s) to the -dev package
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
X-List-Received-Date: Thu, 29 Sep 2011 19:53:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

pkgconfig files belong in the -dev package.  They automatically add
a runtime dependency (when packaging with RPM) for "pkgconfig", which
is not desired to be installed with this package.

This also fixes another problem in that FILES_{PN} was being assigned
instead of being appended and was adding libdir/*, preventing the
above from taking effect.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
index 8fb25d6..f6cee46 100644
--- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
+++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "X11 drivers for Poulsbo (psb) 3D acceleration"
 # not Intel proprietary, but it has no obvious license attached to it.
 LICENSE = "Intel-binary-only"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/${PN}-${PV}/COPYING;md5=02c597a2f082b4581596065bb5a521a8"
-PR = "r8"
+PR = "r9"
 
 inherit autotools
 
@@ -38,7 +38,8 @@ EXTRA_OEMAKE = "linux-dri-x86"
 
 DEPENDS += "libxfixes libxdamage libdrm-poulsbo libxxf86vm dri2proto libxmu libxi glproto makedepend-native"
 
-FILES_${PN} = "${libdir}/* ${libdir}/xorg/modules/dri/* \
+FILES_${PN}-dev += "${libdir}/pkgconfig"
+FILES_${PN} += "${libdir}/xorg/modules/dri/* \
 	    ${libdir}/xorg/modules/drivers/*"
 
 PACKAGES =+ "libglu libglu-dev"
-- 
1.7.0.4


