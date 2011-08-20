Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615E6E0122E
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2011 08:26:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,256,1312182000"; d="scan'208";a="42090474"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2011 08:26:45 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:56 -0500
Message-Id: <2729aa52afa6f6ae03f3be0c87ed66668622840d.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
References: <cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1313853536.git.tom.zanussi@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
Subject: [PATCH 6/9] meta-fri2: add EMGD 1.8 capabilities to fri2
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
X-List-Received-Date: Sat, 20 Aug 2011 15:26:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patch essentially adds a new EMGD-capable 'fri2' machine to
meta-fri2.

The current version with vesa graphics will become fri2-noemgd; fri2
will become the version with EMGD graphics.  This patch does the
fri2->fri2-noemgd renaming and adds the new files for fri2, and
updates the necessary .bbappends to support both fri2 and fri2-noemgd.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fri2/conf/machine/fri2-noemgd.conf            |   36 +++++++++++++++
 meta-fri2/conf/machine/fri2.conf                   |    5 ++-
 .../formfactor/formfactor/fri2-noemgd/machconfig   |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    1 +
 .../xserver-xf86-config/fri2-noemgd/xorg.conf      |   26 +++++++++++
 .../xserver-xf86-config/fri2/xorg.conf             |   48 ++++++++++++++-----
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 ++++
 7 files changed, 114 insertions(+), 14 deletions(-)
 create mode 100644 meta-fri2/conf/machine/fri2-noemgd.conf
 create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig
 create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf

diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
new file mode 100644
index 0000000..fea43a2
--- /dev/null
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -0,0 +1,36 @@
+#@TYPE: Machine
+#@NAME: fri2
+
+#@DESCRIPTION: Machine configuration for Fish River Island II systems
+# i.e. E660 + EG20T
+
+include conf/machine/include/tune-atom.inc
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget wifi 3g"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0+git%"
+
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
+PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
+XSERVER ?= "xserver-xf86-dri-lite \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           xf86-video-vesa"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index fea43a2..97b6a2e 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -24,7 +24,10 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
-           xf86-video-vesa"
+           emgd-driver-bin"
+
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
diff --git a/meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig b/meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-fri2/recipes-core/tasks/task-core-tools.bbappend b/meta-fri2/recipes-core/tasks/task-core-tools.bbappend
index 5accb2e..aa50c91 100644
--- a/meta-fri2/recipes-core/tasks/task-core-tools.bbappend
+++ b/meta-fri2/recipes-core/tasks/task-core-tools.bbappend
@@ -1,2 +1,3 @@
 RRECOMMENDS_task-core-tools-profile_append_fri2 = " systemtap"
+RRECOMMENDS_task-core-tools-profile_append_fri2-noemgd = " systemtap"
 
diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Generic VESA"
+    Driver	"vesa"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Generic VESA"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
index da4fc3c..fce58f8 100644
--- a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
+++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
@@ -1,23 +1,45 @@
-Section "Device"
-    Identifier	"Generic VESA"
-    Driver	"vesa"
-EndSection
+##
+## X Config options generated from CED
+## x11 conf skeleton
+## DriverVer=
+##
 
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
+Section "Screen"
+    Identifier    "Screen0"
+    Device        "IntelEMGD-0"
+    Monitor       "Monitor0"
+    SubSection    "Display"
+    EndSubSection
 EndSection
 
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Generic VESA"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
+# Primary (First/only) display
+Section "Device"
+    Identifier "IntelEMGD-0"
+    Driver     "emgd"
+    VendorName "Intel(R) DEG"
+    BoardName  "Embedded Graphics"
+    BusID      "0:2:0"
+    Screen      0
+    Option     "PcfVersion"            "1792"
+    Option     "ConfigId"              "1"
+    Option     "ALL/1/name"                   "e6xx"
+    Option     "ALL/1/General/PortOrder"      "40000"
+    Option     "ALL/1/General/DisplayConfig"  "1"
+    Option     "ALL/1/General/DisplayDetect"  "1"
+    Option     "ALL/1/General/TuningWA" "1"
+    Option     "ALL/1/Port/4/General/name"           "lvds"
+    Option     "ALL/1/Port/4/General/EdidAvail"      "3"
+    Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
+    Option     "ALL/1/Port/4/General/Rotation"       "0"
+    Option     "ALL/1/Port/4/General/Edid"           "0"
 EndSection
 
 Section "ServerLayout"
     Identifier     "Default Layout"
-    Screen         "Default Screen"
+    Screen 0       "Screen0" 0 0
+   # InputDevice    "Mouse0" "CorePointer"
+   # InputDevice    "Keyboard0" "CoreKeyboard"
+   # InputDevice    "DevInputMice" "SendCoreEvents"
 EndSection
 
 Section "ServerFlags"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 98c056f..5cfd295 100644
--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -1,6 +1,15 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
 COMPATIBLE_MACHINE_fri2 = "fri2"
 KMACHINE_fri2  = "yocto/standard/fri2"
+KERNEL_FEATURES_append_fri2 += " cfg/smp.scc"
+
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd  = "yocto/standard/fri2"
+KERNEL_FEATURES_append_fri2-noemgd += " cfg/smp.scc"
 
 SRCREV_machine_pn-linux-yocto_fri2 ?= "9ebb9cf2527250fceee7ccd9c6d3e01c00724bf9"
 SRCREV_meta_pn-linux-yocto_fri2 ?= "9da70812ecddee0f7eeb11675f29497cb997275e"
+
+SRCREV_machine_pn-linux-yocto_fri2-noemgd ?= "9ebb9cf2527250fceee7ccd9c6d3e01c00724bf9"
+SRCREV_meta_pn-linux-yocto_fri2-noemgd ?= "9da70812ecddee0f7eeb11675f29497cb997275e"
-- 
1.7.0.4


