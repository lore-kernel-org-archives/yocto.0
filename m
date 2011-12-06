Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A964E00746
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2011 20:54:01 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Dec 2011 20:54:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,303,1320652800"; d="scan'208";a="92730391"
Received: from unknown (HELO localhost) ([10.255.12.237])
	by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2011 20:54:00 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Mon,  5 Dec 2011 22:53:57 -0600
Message-Id: <90f802f1a71cc79a5cc23b0425a4ceaa8385c1e4.1323136480.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1323136479.git.tom.zanussi@intel.com>
References: <cover.1323136479.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel: new package - gst-va-intel
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
X-List-Received-Date: Tue, 06 Dec 2011 04:54:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We need some extra plugins for EMGD video acceleration use and
testing, so create a new 'gst-va-intel' package group for them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-multimedia/gstreamer/gst-va-intel.bb   |   28 ++++++++++++++++++++
 1 files changed, 28 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-va-intel.bb

diff --git a/common/recipes-multimedia/gstreamer/gst-va-intel.bb b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
new file mode 100644
index 0000000..31bde4e
--- /dev/null
+++ b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "Video Acceleration Add-ons for Intel BSPs"
+LICENSE = "MIT"
+DEPENDS = "gst-meta-base"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+PR = "r0"
+
+PACKAGES = "\
+    gst-va-intel \
+    gst-va-intel-general \
+    gst-va-intel-video \
+    "
+
+ALLOW_EMPTY = "1"
+
+RDEPENDS_gst-va-intel = "\
+    gst-va-intel-general \
+    gst-va-intel-video \
+    "
+
+RDEPENDS_gst-va-intel-general = "\
+    gst-ffmpeg \
+    "
+
+RDEPENDS_gst-va-intel-video = "\
+    gst-plugins-good-isomp4 \
+    "
-- 
1.7.0.4


