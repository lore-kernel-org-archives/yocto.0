Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 227F0E0141C
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 14:38:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Aug 2012 14:38:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,342,1344236400"; d="scan'208";a="216401259"
Received: from unknown (HELO localhost) ([10.255.13.3])
	by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2012 14:38:10 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 30 Aug 2012 16:38:00 -0500
Message-Id: <756571750b0449335ef01279ce10609099b8a8e1.1346362316.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1346362316.git.tom.zanussi@intel.com>
References: <cover.1346362316.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel: add va-impl-intel MACHINE_FEATURE
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
X-List-Received-Date: Thu, 30 Aug 2012 21:38:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a new va-impl-intel MACHINE_FEATURE to explicitly choose intel
video acceleration, rather than have it as the fallthrough default, so
that anything that wants to specify something different locally
doesn't get unwanted components.

Also rename the gst-va-mixvideo feature to va-impl-mixvideo match and
since it isn't only concerned with gst.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-multimedia/gstreamer/gst-va-intel.bb   |   16 +++++++++++++---
 common/recipes-multimedia/libva/va-intel.bb        |   16 ++++++++++++----
 2 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/common/recipes-multimedia/gstreamer/gst-va-intel.bb b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
index 17cb7c8..516e5f1 100644
--- a/common/recipes-multimedia/gstreamer/gst-va-intel.bb
+++ b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
@@ -4,10 +4,16 @@ DEPENDS = "gst-meta-base"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-PR = "r0"
+PR = "r1"
 
-VAAPI_IMPL = "${@base_contains('MACHINE_FEATURES', 'gst-va-mixvideo', 'gst-va-mixvideo-vaapi', \
-             'gst-va-intel-vaapi', d)}"
+def map_gst_vaapi(d):
+    if base_contains('MACHINE_FEATURES', 'va-impl-mixvideo', "1", "0", d) == "1":
+       return "gst-va-mixvideo-vaapi"
+    if base_contains('MACHINE_FEATURES', 'va-impl-intel', "1", "0", d) == "1":
+       return "gst-va-intel-vaapi"
+    return ""
+
+VAAPI_IMPL = "${@map_gst_vaapi(d)}"
 
 PACKAGES = "\
     gst-va-intel \
@@ -32,10 +38,14 @@ RDEPENDS_gst-va-intel-video = "\
     gst-plugins-good-isomp4 \
     "
 
+# The gstreamer-vaapi package contains the vaapi implementation
+#
 RDEPENDS_gst-va-intel-vaapi = "\
     gstreamer-vaapi \
     "
 
+# The emgd driver contains the vaapi implementation
+#
 RDEPENDS_gst-va-mixvideo-vaapi = "\
     emgd-driver-bin \
     "
diff --git a/common/recipes-multimedia/libva/va-intel.bb b/common/recipes-multimedia/libva/va-intel.bb
index fc4a28e..ce642fe 100644
--- a/common/recipes-multimedia/libva/va-intel.bb
+++ b/common/recipes-multimedia/libva/va-intel.bb
@@ -3,11 +3,19 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-PR = "r0"
+PR = "r1"
 
-VA_IMPL = "${@base_contains('MACHINE_FEATURES', 'gst-va-mixvideo', \
-          'libva libva-x11 libva-tpi libva-glx libva-egl', \
-          'libva libva-intel-driver', d)}"
+def map_valibs(d):
+    # The emgd mixvideo implementation requires libva-x11/tpi/glx/egl
+    if base_contains('MACHINE_FEATURES', 'va-impl-mixvideo', "1", "0", d) == "1":
+       return "libva libva-x11 libva-tpi libva-glx libva-egl"
+    # The intel implementation requires the libva-intel-driver package
+    if base_contains('MACHINE_FEATURES', 'va-impl-intel', "1", "0", d) == "1":
+       return "libva libva-intel-driver"
+    # All meta-intel video acceleration requires libva
+    return "libva"
+
+VA_IMPL = "${@map_valibs(d)}"
 
 PACKAGES = "\
     va-intel \
-- 
1.7.4.1


