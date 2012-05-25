Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6A0FE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:51:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="157376075"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2012 14:50:31 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:37 -0500
Message-Id: <366449c86dbf663bd24da9727d9759ab24ea2c75.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 12/22] va-intel: new package
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
X-List-Received-Date: Fri, 25 May 2012 21:51:15 -0000

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


