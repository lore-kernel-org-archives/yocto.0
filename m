Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3B2E4C80AC8
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:19:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2011 00:19:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,399,1304319600"; d="scan'208";a="20753362"
Received: from unknown (HELO localhost) ([10.255.12.247])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2011 00:19:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	koen@dominion.thruhere.net
Date: Tue, 21 Jun 2011 00:19:10 -0700
Message-Id: <7d2650609a5ced294ea74668a6349d0dc983232a.1308639171.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1308639171.git.dvhart@linux.intel.com>
References: <cover.1308639171.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308639171.git.dvhart@linux.intel.com>
References: <cover.1308639171.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] beagleboard: switch to xserver-xf86-lite
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
X-List-Received-Date: Tue, 21 Jun 2011 07:19:26 -0000

Try to get closer to the meta-texasinstruments layer which uses
xserver-xorg. Provide a default xorg.conf that matches the one
from meta-texasinstruments.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/machine/beagleboard.conf           |    8 +++-
 .../xserver-xf86-config/beagleboard/xorg.conf      |   34 ++++++++++++++++++++
 2 files changed, 40 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 945744b..fddacf9 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -3,8 +3,12 @@
 #@DESCRIPTION: Machine configuration for the http://beagleboard.org/ board 
 TARGET_ARCH = "arm"
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
+PREFERRED_PROVIDER_virtual/xserver = "xserver-xf86-lite"
+XSERVER = "xserver-xf86-lite \
+           xf86-input-evdev \
+           xf86-input-mouse \
+           xf86-video-omapfb \
+           xf86-input-keyboard"
 
 # Ship all kernel modules by default
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf b/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
new file mode 100644
index 0000000..0335e6a
--- /dev/null
+++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
@@ -0,0 +1,34 @@
+Section "Module"
+	Load	"extmod"
+	Load	"dbe"
+	Load	"glx"
+	Load	"freetype"
+	Load	"type1"
+	Load	"record"
+	Load	"dri"
+EndSection
+
+Section "Monitor"
+	Identifier	"Builtin Default Monitor"
+EndSection
+
+Section "Device"
+	Identifier	"Builtin Default fbdev Device 0"
+	Driver		"omapfb"
+EndSection
+
+Section "Screen"
+	Identifier	"Builtin Default fbdev Screen 0"
+	Device		"Builtin Default fbdev Device 0"
+	Monitor		"Builtin Default Monitor"
+EndSection
+
+Section "ServerLayout"
+	Identifier	"Builtin Default Layout"
+	Screen		"Builtin Default fbdev Screen 0"
+EndSection
+
+Section "ServerFlags"
+	Option		"DontZap"  "0"
+        Option		"AutoAddDevices" "False"
+EndSection
-- 
1.7.1


