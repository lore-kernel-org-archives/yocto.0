Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CB4E01214
	for <yocto@yoctoproject.org>; Sun, 28 Aug 2011 04:02:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Aug 2011 04:02:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,292,1312182000"; d="scan'208";a="45786130"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.157])
	by fmsmga001.fm.intel.com with ESMTP; 28 Aug 2011 04:02:16 -0700
From: Yu Ke <ke.yu@intel.com>
To: tom.zanussi@linux.intel.com,
	yocto@yoctoproject.org
Date: Sun, 28 Aug 2011 19:10:49 +0800
Message-Id: <7ec0c9b144bec334d90299b3f4ebcad3346cd9cd.1314529271.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1314529271.git.ke.yu@intel.com>
References: <cover.1314529271.git.ke.yu@intel.com>
In-Reply-To: <cover.1314529271.git.ke.yu@intel.com>
References: <cover.1314529271.git.ke.yu@intel.com>
Subject: [PATCH 1/1] emenlow xpsb-glx: add package libglu to fix lsb image build warning
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
X-List-Received-Date: Sun, 28 Aug 2011 11:02:18 -0000

lsb image requires libglu, so split the xpsb-glx to provide the libglu
package. mesa-dri also do in the same way. so this patch make xpsb-glx
in sync with mesa-dri.

Fix [YOCTO #1395]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
index 0d675c6..8fb25d6 100644
--- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
+++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "X11 drivers for Poulsbo (psb) 3D acceleration"
 # not Intel proprietary, but it has no obvious license attached to it.
 LICENSE = "Intel-binary-only"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/${PN}-${PV}/COPYING;md5=02c597a2f082b4581596065bb5a521a8"
-PR = "r7"
+PR = "r8"
 
 inherit autotools
 
@@ -41,6 +41,11 @@ DEPENDS += "libxfixes libxdamage libdrm-poulsbo libxxf86vm dri2proto libxmu libx
 FILES_${PN} = "${libdir}/* ${libdir}/xorg/modules/dri/* \
 	    ${libdir}/xorg/modules/drivers/*"
 
+PACKAGES =+ "libglu libglu-dev"
+
+FILES_libglu = "${libdir}/libGLU.so.*"
+FILES_libglu-dev = "${libdir}/libGLU.* ${includedir}/GL/glu*.h"
+
 # Multiple virtual/gl providers being built breaks staging
 EXCLUDE_FROM_WORLD = "1"
 
-- 
1.7.0.4


