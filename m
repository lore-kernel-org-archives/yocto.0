Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 172AF4C80A52
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 19:35:45 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jun 2011 17:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="17670566"
Received: from unknown (HELO localhost) ([10.255.13.112])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2011 17:35:44 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Jun 2011 17:35:28 -0700
Message-Id: <f66f8d260f0d9ca587e6dc55cba45a6e0ce224a6.1308357152.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1308357152.git.dvhart@linux.intel.com>
References: <cover.1308357152.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1308357152.git.dvhart@linux.intel.com>
References: <cover.1308357152.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] beagleboard: xserver-kdrive xorg.conf installation
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
X-List-Received-Date: Sat, 18 Jun 2011 00:35:45 -0000

Append xserver-kdrive to allow for BSP specific xorg.conf files. This also
appears to drag in a runtime dependency on libhal, so add that to the
bbappend's RDEPENDS_${PN} as well.

Ultimately we probably want an xserver independent xorgconf recipe that
enables installing BSP specific xorg.conf files for all the xservers. This
works for now.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../xserver-kdrive/beagleboard/xorg.conf           |   34 ++++++++++++++++++++
 .../xorg-xserver/xserver-kdrive_1.7.99.2.bbappend  |   10 ++++++
 2 files changed, 44 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
 create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend

diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
new file mode 100644
index 0000000..0335e6a
--- /dev/null
+++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
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
diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend
new file mode 100644
index 0000000..cfa6c4f
--- /dev/null
+++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+RDEPENDS_${PN} += "libhal"
+SRC_URI += "file://xorg.conf"
+
+do_install_append() {
+	install -d ${D}/${sysconfdir}/X11
+	install -m 0644 ${WORKDIR}/xorg.conf ${D}/${sysconfdir}/X11/
+}
+
+
-- 
1.7.1


