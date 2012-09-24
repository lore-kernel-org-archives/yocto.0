Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30746E00347
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 12:17:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Sep 2012 12:17:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,477,1344236400"; d="scan'208";a="212133102"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 24 Sep 2012 12:17:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 24 Sep 2012 12:16:54 -0700
Message-Id: <4ea1ddc93fe43eff86b45f7e9a1c35bc9fce222a.1348514176.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] emgd: Avoid 'already stripped' warnings
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
X-List-Received-Date: Mon, 24 Sep 2012 19:17:03 -0000

The EMGD binaries comes stripped in the download, so there
is nothing we can do about it. Avoid printing the warnings
about them being already stripped.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../xorg-driver/emgd-driver-bin_1.10.bb            |    2 ++
 .../xorg-driver/emgd-driver-bin_1.14.bb            |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
index 5779e5d..6d80bee 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
@@ -24,6 +24,8 @@ SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da
 
 # These are closed binaries generated elsewhere so don't check ldflags
 INSANE_SKIP_${PN} = "ldflags"
+# Inhibit warnings about files being stripped, we can't do anything about it.
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
index 2464c38..1f585f2 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
@@ -31,6 +31,8 @@ PKG_${PN}-doc = "emgd-driver-doc"
 
 # These are closed binaries generated elsewhere so don't check ldflags
 INSANE_SKIP_${PN} = "ldflags"
+# Inhibit warnings about files being stripped, we can't do anything about it.
+INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
 
 FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
 FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/gstreamer-0.10/.debug"
-- 
1.7.5.4


