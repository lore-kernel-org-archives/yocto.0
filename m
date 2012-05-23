Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C955CE01431
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 May 2012 12:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156323130"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2012 12:52:40 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:38 -0500
Message-Id: <6412e791187add0dc73f3b1d0df5a9dd0c871fff.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 11/20] gst-va-intel: add conditional vaapi implementation
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
X-List-Received-Date: Wed, 23 May 2012 19:52:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Use different versions of vaapi interface implementaion depending on
what a machine specifies.  The default if no MACHINE_FEATURE is
specified is gstreamer-vaapi.  Other machines may need a different
implementation e.g. a machine using emgd would specify
'gst-va-mixvideo' in its MACHINE_FEATURES in order to have the
implementation satisfied by emgd instead of gstreamer-vaapi, which
this also implements.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-multimedia/gstreamer/gst-va-intel.bb   |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/common/recipes-multimedia/gstreamer/gst-va-intel.bb b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
index 31bde4e..4f7fe9f 100644
--- a/common/recipes-multimedia/gstreamer/gst-va-intel.bb
+++ b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
@@ -6,10 +6,14 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
 
 PR = "r0"
 
+VAAPI_IMPL = "${@base_contains('MACHINE_FEATURES', 'gst-va-mixvideo', 'gst-va-mixvideo-vaapi', \
+             'gst-va-intel-vaapi', d)}"
+
 PACKAGES = "\
     gst-va-intel \
     gst-va-intel-general \
     gst-va-intel-video \
+    ${VAAPI_IMPL} \
     "
 
 ALLOW_EMPTY = "1"
@@ -17,6 +21,7 @@ ALLOW_EMPTY = "1"
 RDEPENDS_gst-va-intel = "\
     gst-va-intel-general \
     gst-va-intel-video \
+    ${VAAPI_IMPL} \
     "
 
 RDEPENDS_gst-va-intel-general = "\
@@ -26,3 +31,11 @@ RDEPENDS_gst-va-intel-general = "\
 RDEPENDS_gst-va-intel-video = "\
     gst-plugins-good-isomp4 \
     "
+
+RDEPENDS_gst-va-intel-vaapi = "\
+    gstreamer-vaapi \
+    "
+
+RDEPENDS_gst-va-mixvideo-vaapi = "\
+    emgd-driver-bin \
+    "
-- 
1.7.0.4


