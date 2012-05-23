Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86C3BE0140C
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 May 2012 12:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="143883335"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2012 12:52:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:39 -0500
Message-Id: <366449c86dbf663bd24da9727d9759ab24ea2c75.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 12/20] va-intel: new package
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
X-List-Received-Date: Wed, 23 May 2012 19:52:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We need some libraries for video acceleration which depend on the
video implementation being used e.g. vanilla intel vs emgd, so create
a new 'va-intel' package group for them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/libva/va-intel.bb |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/libva/va-intel.bb

diff --git a/common/recipes-multimedia/libva/va-intel.bb b/common/recipes-multimedia/libva/va-intel.bb
new file mode 100644
index 0000000..3ce857a
--- /dev/null
+++ b/common/recipes-multimedia/libva/va-intel.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "Video Acceleration Add-ons for Intel BSPs"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+PR = "r0"
+
+VA_IMPL = "${@base_contains('MACHINE_FEATURES', 'gst-va-mixvideo', \
+          'libva libva-x11 libva-tpi libva-glx libva-egl', \
+          'libva libva-intel-driver', d)}"
+
+PACKAGES = "\
+    va-intel \
+    "
+
+ALLOW_EMPTY = "1"
+
+RDEPENDS_va-intel = " \
+    ${VA_IMPL} \
+    "
-- 
1.7.0.4


