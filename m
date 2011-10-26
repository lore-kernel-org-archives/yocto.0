Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC872E013CC
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 16:26:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Oct 2011 16:25:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="68325919"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.157])
	by orsmga001.jf.intel.com with ESMTP; 26 Oct 2011 16:25:45 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2011 16:25:27 -0700
Message-Id: <962c457593bed2a8f8a96efd67a907d65e155f5b.1319666230.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
References: <54e92a5053f2c19bd9705066004a68fb6e40234d.1319666230.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
Subject: [PATCH 3/7] meta-romley: xserver-xorg renaming updates
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
X-List-Received-Date: Wed, 26 Oct 2011 23:26:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update romley to reflect the new xserver-xorg naming.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-romley/conf/machine/romley.conf               |   12 +++++++++---
 .../xorg-driver/xf86-video-mga_1.4.13.bb           |    2 +-
 meta-sugarbay/conf/machine/sugarbay.conf           |    4 +---
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
index 3fae18d..625fa60 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -17,9 +17,15 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-dri \
+           xserver-xorg-extension-dri2 \
+           xserver-xorg-extension-glx \
+           xserver-xorg-extension-extmod \
+           xserver-xorg-extension-dbe \
+           xserver-xorg-module-libint10 \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
diff --git a/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb b/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
index 9905a28..b48e56d 100755
--- a/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
+++ b/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
@@ -1,4 +1,4 @@
-require recipes-graphics/xorg-driver/xf86-video-common.inc
+require recipes-graphics/xorg-driver/xorg-driver-video.inc
 
 SUMMARY = "X.Org X server -- Matrox MGA display driver"
 
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 3ea9ca3..c606cf4 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -30,9 +30,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
-           xf86-video-intel \
-           mesa-dri \
-           mesa-dri-driver-i965"
+           mesa-dri"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.5.4


