Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A045E01248
	for <yocto@yoctoproject.org>; Sat,  8 Oct 2011 18:22:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Oct 2011 18:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="61310960"
Received: from unknown (HELO localhost) ([10.255.15.6])
	by orsmga002.jf.intel.com with ESMTP; 08 Oct 2011 18:22:39 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat,  8 Oct 2011 20:22:36 -0500
Message-Id: <9ec23b476b1b4c1ba29911399bcf84c53693aff7.1318123160.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1318123160.git.tom.zanussi@intel.com>
References: <cover.1318123160.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-emenlow: restore /usr/lib/dri for xpsb-glx
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
X-List-Received-Date: Sun, 09 Oct 2011 01:22:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A previous fix for a QA warning in this package (commit 2097a9e7)
inadvertently removed /usr/lib/dri, causing glxgears etc. to no longer
work.  This restores it.

Fixes [YOCTO #1235], again.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
index f6cee46..0773a7c 100644
--- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
+++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "X11 drivers for Poulsbo (psb) 3D acceleration"
 # not Intel proprietary, but it has no obvious license attached to it.
 LICENSE = "Intel-binary-only"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/${PN}-${PV}/COPYING;md5=02c597a2f082b4581596065bb5a521a8"
-PR = "r9"
+PR = "r10"
 
 inherit autotools
 
@@ -40,7 +40,8 @@ DEPENDS += "libxfixes libxdamage libdrm-poulsbo libxxf86vm dri2proto libxmu libx
 
 FILES_${PN}-dev += "${libdir}/pkgconfig"
 FILES_${PN} += "${libdir}/xorg/modules/dri/* \
-	    ${libdir}/xorg/modules/drivers/*"
+	    ${libdir}/xorg/modules/drivers/* \
+	    ${libdir}/dri"
 
 PACKAGES =+ "libglu libglu-dev"
 
-- 
1.7.0.4


