Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 971D4E013DC
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 15:06:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2011 15:06:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102741616"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2011 15:06:44 -0800
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 15 Dec 2011 08:07:09 -0800
Message-Id: <08ff15bd0b2626ebb95207cc826fd37909cb6e39.1323963953.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1323963953.git.rahul.saxena@intel.com>
References: <cover.1323963953.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: new layer for Cedar Trail Systems
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
X-List-Received-Date: Thu, 15 Dec 2011 23:06:44 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 MAINTAINERS                                        |    4 +
 meta-cedartrail/COPYING.MIT                        |   17 ++++
 meta-cedartrail/README                             |   83 ++++++++++++++++++++
 meta-cedartrail/README.sources                     |   17 ++++
 meta-cedartrail/conf/layer.conf                    |   10 +++
 meta-cedartrail/conf/machine/cedartrail.conf       |   38 +++++++++
 .../formfactor/formfactor/cedartrail/machconfig    |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xserver-xf86-config/cedartrail/xorg.conf       |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.0.bbappend              |   11 +++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 +++
 13 files changed, 227 insertions(+), 0 deletions(-)
 create mode 100755 meta-cedartrail/COPYING.MIT
 create mode 100755 meta-cedartrail/README
 create mode 100755 meta-cedartrail/README.sources
 create mode 100755 meta-cedartrail/binary/.gitignore
 create mode 100755 meta-cedartrail/conf/layer.conf
 create mode 100755 meta-cedartrail/conf/machine/cedartrail.conf
 create mode 100755 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 create mode 100755 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100755 meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
 create mode 100755 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 create mode 100755 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100755 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100755 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/MAINTAINERS b/MAINTAINERS
index fda48ad..ff468c2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -33,6 +33,10 @@ Maintainers List (try to look for most precise areas first)
 
 		-----------------------------------
 
+CEDARTRAIL
+M:	Rahul Saxena <rahul.saxena@intel.com>
+F:	meta-cedartrail/
+
 COMMON
 M:	Tom Zanussi <tom.zanussi@intel.com>
 F:	common/recipes-core/
diff --git a/meta-cedartrail/COPYING.MIT b/meta-cedartrail/COPYING.MIT
new file mode 100755
index 0000000..fb950dc
--- /dev/null
+++ b/meta-cedartrail/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy 
+of this software and associated documentation files (the "Software"), to deal 
+in the Software without restriction, including without limitation the rights 
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+copies of the Software, and to permit persons to whom the Software is 
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in 
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+THE SOFTWARE.
diff --git a/meta-cedartrail/README b/meta-cedartrail/README
new file mode 100755
index 0000000..67cba6b
--- /dev/null
+++ b/meta-cedartrail/README
@@ -0,0 +1,83 @@
+This README file contains information on building the meta-cedartrail
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+
+Table of Contents
+=================
+
+ I. Building the meta-cedartrail BSP layer
+II. Booting the images in /binary
+
+
+I. Building the meta-cedartrail BSP layer
+=========================================
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build a cedartrail 
+image by adding the location of the meta-cedartrail layer to
+bblayers.conf e.g.:
+
+  yocto/meta-intel/meta-cedartrail \
+
+To enable the cedartrail layer, add the cedartrail MACHINE to local.conf:
+
+  MACHINE ?= "cedartrail"
+
+You should then be able to build a cedartrail image as such:
+
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+As an alternative to downloading the BSP tarball, you can also work
+directly from the meta-intel git repository.  For each BSP in the
+'meta-intel' repository, there are multiple branches, one
+corresponding to each major release starting with 'laverne' (0.90), in
+addition to the latest code which tracks the current master.  Instead
+of extracting a BSP tarball at the top level of your yocto build tree,
+you can equivalently check out the appropriate branch from the
+meta-intel repository at the same location.
+
+
+II. Booting the images in /binary
+==================================
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=core-image-sato-cedartrail-20111209003350.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+This should give you a bootable USB flash device.  Insert the device
+into a bootable USB socket on the target, and power on.  This should
+result in a system booted to the Sato graphical desktop.
+
+If you want a terminal, use the arrows at the top of the UI to move to
+different pages of available applications, one of which is named
+'Terminal'.  Clicking that should give you a root terminal.
+
+If you want to ssh into the system, you can use the root terminal to
+ifconfig the IP address and use that to ssh in.  The root password is
+empty, so to log in type 'root' for the user name and hit 'Enter' at
+the Password prompt: and you should be in.
+
+----
+
+If you find you're getting corrupt images on the USB (it doesn't show
+the syslinux boot: prompt, or the boot: prompt contains strange
+characters), try doing this first:
+
+# dd if=/dev/zero of=/dev/sdf bs=1M count=512
diff --git a/meta-cedartrail/README.sources b/meta-cedartrail/README.sources
new file mode 100755
index 0000000..8e006fb
--- /dev/null
+++ b/meta-cedartrail/README.sources
@@ -0,0 +1,17 @@
+The sources for the packages comprising the images shipped with this
+BSP can be found at the following location:
+
+http://downloads.yoctoproject.org/mirror/sources/
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can be found at the
+following location:
+
+http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can also be found at the
+following locations:
+
+git://git.yoctoproject.org/poky.git
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-cedartrail/binary/.gitignore b/meta-cedartrail/binary/.gitignore
new file mode 100755
index 0000000..e69de29
diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
new file mode 100755
index 0000000..cb4142d
--- /dev/null
+++ b/meta-cedartrail/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "cedartrail"
+BBFILE_PATTERN_cedartrail := "^${LAYERDIR}/"
+BBFILE_PRIORITY_cedartrail = "6"
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
new file mode 100755
index 0000000..23ee0a7
--- /dev/null
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -0,0 +1,38 @@
+#@TYPE: Machine
+#@NAME: Cedartrail 
+
+#@DESCRIPTION: Machine configuration for Cedartrail systems
+# i.e. Cedarview processor + Tiger Point Chipset 
+
+include conf/machine/include/tune-atom.inc
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget"
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
+SERIAL_CONSOLE = "115200 ttyS3"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
new file mode 100755
index 0000000..ffce012
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100755
index 0000000..54da0ff
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend b/meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
new file mode 100755
index 0000000..e972712
--- /dev/null
+++ b/meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_cedartrail = " systemtap"
+
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
new file mode 100755
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
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
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100755
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100755
index 0000000..3978951
--- /dev/null
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+KMACHINE_cedartrail  = "cedartrail"
+
+# The Cedarview processors have hyperthreading and includes dual-core versions
+KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_cedartrail ?= XXXX
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100755
index 0000000..7e746f5
--- /dev/null
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+KMACHINE_cedartrail  = "yocto/standard/cedartrail"
+
+# The Cedarview processors have hyperthreading and includes dual-core versions
+KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "5746120ee0afefd1e28400bea4b74f285bd5e59a"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "d588bdafc0d9b4d2386144b7d76a1d379e2d16c0"
-- 
1.7.0.4


