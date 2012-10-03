Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF9BFE011C9
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 21:06:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Oct 2012 21:06:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,527,1344236400"; d="scan'208";a="218805891"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by orsmga002.jf.intel.com with ESMTP; 02 Oct 2012 21:06:34 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  2 Oct 2012 23:06:33 -0500
Message-Id: <2c1e927fa99abe47865a03cf661d4757ff3147c6.1349236664.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1349236664.git.tom.zanussi@intel.com>
References: <cover.1349236664.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] gst-va-intel: incude gst-ffmpeg only if 'commercial' is whitelisted
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
X-List-Received-Date: Wed, 03 Oct 2012 04:06:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

World and universe builds break if the newly commercial gst-ffmpeg is
included without a 'commercial' entry in LICENSE_FLAGS_WHITELIST, so
only add gst-ffmpeg if that's the case.

Normally BSPs conditionally include gst-va-intel and thus gst-ffmpeg
is included in the build only if 'commercial' is added to
LICENSE_FLAGS_WHITELIST and therefore this isn't an issue, but world
and universe builds are different.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/gstreamer/gst-va-intel.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/recipes-multimedia/gstreamer/gst-va-intel.bb b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
index 516e5f1..ee04839 100644
--- a/common/recipes-multimedia/gstreamer/gst-va-intel.bb
+++ b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
@@ -4,7 +4,7 @@ DEPENDS = "gst-meta-base"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-PR = "r1"
+PR = "r2"
 
 def map_gst_vaapi(d):
     if base_contains('MACHINE_FEATURES', 'va-impl-mixvideo', "1", "0", d) == "1":
@@ -31,7 +31,8 @@ RDEPENDS_gst-va-intel = "\
     "
 
 RDEPENDS_gst-va-intel-general = "\
-    gst-ffmpeg \
+    ${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+    "commercial", "gst-ffmpeg", "", d)} \
     "
 
 RDEPENDS_gst-va-intel-video = "\
-- 
1.7.11.4


