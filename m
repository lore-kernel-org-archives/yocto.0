Return-Path: <rahul.saxena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC11BE013DA
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:29 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="122229709"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by azsmga001.ch.intel.com with ESMTP; 22 Mar 2012 17:41:29 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:14 -0700
Message-Id: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
MIME-Version: 1.0
Subject: [PATCH 01/13] meta-cedartrail: Separate conf files for the Cedar Trail BSP boot cases of with and without pvr driver
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rahul Saxena <rahul.saxena@intel.com>

Seperate Cedar Trail machine configuration files, one file each for build
with pvr graphics driver and without pvr driver (with VESA driver)
The Cedar Trail platform is based on the Cedarview processor (Intel® Atom™
N2600, N2800 and D2700 processor)and Tiger Point Chipset (Intel® NM10 Express).

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   41 ++++++++++++++++++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   15 +++++--
 2 files changed, 52 insertions(+), 4 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf

diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
new file mode 100644
index 0000000..b664272
--- /dev/null
+++ b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
@@ -0,0 +1,41 @@
+#@TYPE: Machine
+#@NAME: Cedartrail-nopvr 
+
+#@DESCRIPTION: Machine configuration for Cedartrail systems
+# i.e. Cedarview (N2600, N2800 and D2700) processor +
+# Tiger Point (Intel® NM10 Express) Chipset
+
+include conf/machine/include/tune-atom.inc
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget alsa"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
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
+SYSLINUX_OPTS = "serial 3 115200"
+SERIAL_CONSOLE = "115200 ttyS3"
+APPEND += "console=ttyS3,115200 console=tty3"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts cedartrail-audio"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 23ee0a7..21adb46 100755
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -2,17 +2,19 @@
 #@NAME: Cedartrail 
 
 #@DESCRIPTION: Machine configuration for Cedartrail systems
-# i.e. Cedarview processor + Tiger Point Chipset 
+# i.e. Cedarview (N2600, N2800 and D2700) processor +
+# Tiger Point (Intel® NM10 Express) Chipset
 
 include conf/machine/include/tune-atom.inc
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
-                    acpi serial usbgadget"
+                   acpi serial usbgadget alsa"
 
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_mesa-dri ?= "7.10.2"
 
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
@@ -24,11 +26,16 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
-           xf86-video-vesa"
+           mesa-dri \
+           cdv-graphics-drivers " 
 
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+
+SYSLINUX_OPTS = "serial 3 115200"
 SERIAL_CONSOLE = "115200 ttyS3"
+APPEND += "console=ttyS3,115200 console=tty3"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts cedartrail-audio"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-- 
1.7.4.1


