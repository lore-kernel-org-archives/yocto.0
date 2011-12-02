Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB6C5E005A3
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2011 15:54:39 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2011 15:54:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,286,1320652800"; d="scan'208";a="91762009"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2011 15:54:38 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri,  2 Dec 2011 17:54:48 -0600
Message-Id: <4a03808a715749bd50b2cf1d09b145c4a249bda4.1322867339.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1322867339.git.tom.zanussi@intel.com>
References: <cover.1322867339.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] Revert "meta-intel: add gst-meta-base .bbappend"
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
X-List-Received-Date: Fri, 02 Dec 2011 23:54:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This reverts commit acf138682a45725caa48574b170fbc29817bf941.

This breaks non-compatible builds, and should probably be done per-BSP
anyway.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../gstreamer/gst-meta-base_0.10.bbappend          |    9 ---------
 1 files changed, 0 insertions(+), 9 deletions(-)
 delete mode 100644 common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend

diff --git a/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend b/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
deleted file mode 100644
index 61e3059..0000000
--- a/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
+++ /dev/null
@@ -1,9 +0,0 @@
-RDEPENDS_gst-meta-video += "\
-    gst-plugins-good-isomp4"
-
-RDEPENDS_gst-meta-base += "\
-    gst-ffmpeg"
-
-COMPATIBLE_MACHINE = "(crownbay|fri2)"
-
-PR := "${PR}.0"
-- 
1.7.0.4


