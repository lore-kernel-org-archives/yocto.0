Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4634BE0129E
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 22:07:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Oct 2011 22:07:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,338,1315206000"; d="scan'208";a="73057480"
Received: from unknown (HELO localhost) ([10.255.14.245])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 22:07:34 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2011 00:07:14 -0500
Message-Id: <57876222731972088b7d40943f78e960efc2562a.1318481569.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1318481569.git.tom.zanussi@intel.com>
References: <cover.1318481569.git.tom.zanussi@intel.com>
Subject: [PATCH 01/10] meta-intel: /common xserver-xorg name change
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
X-List-Received-Date: Thu, 13 Oct 2011 05:07:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

xserver-xf86-dri-lite changed its name to xorg-xserver, so update the
version in /common.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...86-dri-lite_1.9.3.bb => xserver-xorg-1.9.3.inc} |   16 ++++++----------
 .../crosscompile.patch                             |    0
 .../fix_open_max_preprocessor_error.patch          |    0
 .../macro_tweak.patch                              |    0
 .../nodolt.patch                                   |    0
 .../xorg-xserver/xserver-xorg_1.9.3.bb             |    4 ++++
 6 files changed, 10 insertions(+), 10 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.bb => xserver-xorg-1.9.3.inc} (83%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/crosscompile.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/fix_open_max_preprocessor_error.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/macro_tweak.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg-1.9.3}/nodolt.patch (100%)
 create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xorg_1.9.3.bb

diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
similarity index 83%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
rename to common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
index 81d70bc..888445d 100644
--- a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
@@ -1,19 +1,15 @@
-require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
-
-PROTO_DEPS += "xf86driproto dri2proto"
-
-DEPENDS += "font-util"
-
-PE = "1"
-PR = "r0"
-
 SRC_URI += "file://nodolt.patch \
             file://crosscompile.patch"
 
 # Misc build failure for master HEAD
 SRC_URI += "file://fix_open_max_preprocessor_error.patch"
 
+PROTO_DEPS += "xf86driproto dri2proto"
+DEPENDS += "font-util"
+EXTRA_OECONF += "--enable-dri --enable-dri2 --enable-dga"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
+
 SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
 SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
 
-EXTRA_OECONF += "--enable-dri --enable-dri2 --enable-dga"
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/crosscompile.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/crosscompile.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/fix_open_max_preprocessor_error.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/fix_open_max_preprocessor_error.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/macro_tweak.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/macro_tweak.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/nodolt.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/nodolt.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg_1.9.3.bb b/common/recipes-graphics/xorg-xserver/xserver-xorg_1.9.3.bb
new file mode 100644
index 0000000..f62cad2
--- /dev/null
+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg_1.9.3.bb
@@ -0,0 +1,4 @@
+require recipes-graphics/xorg-xserver/xserver-xorg.inc
+require xserver-xorg-${PV}.inc
+
+PE = "1"
-- 
1.7.0.4


