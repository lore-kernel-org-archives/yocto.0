Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 017F4E013EB
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 18:21:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 May 2012 18:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167878957"
Received: from unknown (HELO localhost) ([10.255.13.71])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2012 18:21:38 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 17 May 2012 20:21:40 -0500
Message-Id: <7c1086df3f92d76ca1a062f9b4b1daf6823bfb63.1337303882.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1337303882.git.tom.zanussi@intel.com>
References: <cover.1337303882.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] emgd-driver-bin: skip insane ldflags check
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
X-List-Received-Date: Fri, 18 May 2012 01:21:39 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add an INSANE_SKIP for ldflags, since these are binaries we have no
control over.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/emgd-driver-bin_1.10.bb           |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
index 28fd0c1..53a43cd 100644
--- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
+++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
@@ -22,6 +22,9 @@ SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.tgz"
 SRC_URI[md5sum] = "e4a38d9efa0b086ae21b68145c4db4e9"
 SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
 
+# These are closed binaries generated elsewhere so don't check ldflags
+INSANE_SKIP_${PN} = "ldflags"
+
 FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dev += "${libdir}/dri ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
-- 
1.7.0.4


