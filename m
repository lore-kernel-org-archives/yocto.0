Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77635E013E0
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 14:37:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Oct 2011 14:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,415,1315206000"; d="scan'208";a="78734080"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.161])
	by fmsmga001.fm.intel.com with ESMTP; 27 Oct 2011 14:37:19 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org
Date: Thu, 27 Oct 2011 14:37:09 -0700
Message-Id: <c8663b9e01c00e485b813c043b7b6e6d12e06599.1319751104.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1319751104.git.kishore.k.bodke@intel.com>
References: <cover.1319751104.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] New Romley BSP created. Uses Matrox MGA graphics driver.
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
X-List-Received-Date: Thu, 27 Oct 2011 21:37:19 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 MAINTAINERS                                        |    4 +
 meta-romley/COPYING.MIT                            |   17 ++++
 meta-romley/README                                 |   88 ++++++++++++++++++++
 meta-romley/README.sources                         |   17 ++++
 meta-romley/conf/layer.conf                        |   10 ++
 meta-romley/conf/machine/romley.conf               |   46 ++++++++++
 .../formfactor/formfactor/romley/machconfig        |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xorg-driver/xf86-video-mga_1.4.13.bb           |   19 ++++
 .../xserver-xf86-config/romley/xorg.conf           |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 +
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    7 ++
 15 files changed, 254 insertions(+), 0 deletions(-)
 create mode 100644 meta-romley/COPYING.MIT
 create mode 100644 meta-romley/README
 create mode 100644 meta-romley/README.sources
 create mode 100644 meta-romley/binary/.gitignore
 create mode 100644 meta-romley/conf/layer.conf
 create mode 100644 meta-romley/conf/machine/romley.conf
 create mode 100644 meta-romley/recipes-bsp/formfactor/formfactor/romley/machconfig
 create mode 100644 meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-romley/recipes-core/tasks/task-core-tools.bbappend
 create mode 100755 meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config/romley/xorg.conf
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/MAINTAINERS b/MAINTAINERS
index fda48ad..49b536e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -57,6 +57,10 @@ N450
 M:	Darren Hart <dvhart@linux.intel.com>
 F:	meta-n450/
 
+ROMLEY
+M:      Kishore Bodke <kishore.k.bodke@intel.com>
+F:      meta-romley/
+
 SUGARBAY
 M:	Tom Zanussi <tom.zanussi@intel.com>
 F:	meta-sugarbay/
diff --git a/meta-romley/COPYING.MIT b/meta-romley/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/meta-romley/COPYING.MIT
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
diff --git a/meta-romley/README b/meta-romley/README
new file mode 100644
index 0000000..d242534
--- /dev/null
+++ b/meta-romley/README
@@ -0,0 +1,88 @@
+This README file contains information on building the meta-romley
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+The 'romley' platform consists of the Intel Sandy Bridge processor,
+plus the Patsburg chipset.  This BSP assumes Matrox graphics is being used.
+
+Table of Contents
+=================
+
+  I. Building the meta-romley BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-romley BSP layer
+=======================================
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build a romley
+image by adding the location of the meta-romley layer to
+bblayers.conf e.g.:
+
+  yocto/meta-intel/meta-romley \
+
+To enable the romley layer, add the romley MACHINE to local.conf:
+
+  MACHINE ?= "romley"
+
+You should then be able to build a romley image as such:
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
+addition to the latest code which tracks the current master (note that
+not all BSPs are present in every release).  Instead of extracting a
+BSP tarball at the top level of your yocto build tree, you can
+equivalently check out the appropriate branch from the meta-intel
+repository at the same location.
+
+
+II. Booting the images in /binary
+=================================
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=core-image-sato-romley-20111007220323.hddimg of=/dev/sdf
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
+
+
diff --git a/meta-romley/README.sources b/meta-romley/README.sources
new file mode 100644
index 0000000..8e006fb
--- /dev/null
+++ b/meta-romley/README.sources
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
diff --git a/meta-romley/binary/.gitignore b/meta-romley/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-romley/conf/layer.conf b/meta-romley/conf/layer.conf
new file mode 100644
index 0000000..c5eeaab
--- /dev/null
+++ b/meta-romley/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "romley"
+BBFILE_PATTERN_romley := "^${LAYERDIR}/"
+BBFILE_PRIORITY_romley = "6"
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
new file mode 100644
index 0000000..38bd17a
--- /dev/null
+++ b/meta-romley/conf/machine/romley.conf
@@ -0,0 +1,46 @@
+#@TYPE: Machine
+#@NAME: romley
+
+#@DESCRIPTION: Machine configuration for Sugar Bay systems
+# i.e. Sandy Bridge + Patsburg Chipset
+
+require conf/machine/include/tune-x86_64.inc
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto = "3.0%"
+
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
+PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-dri \
+           xserver-xorg-extension-dri2 \
+           xserver-xorg-extension-glx \
+           xserver-xorg-extension-extmod \
+           xserver-xorg-extension-dbe \
+           xserver-xorg-module-libint10 \
+           xserver-xorg-module-xaa \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+	   xf86-video-mga \
+           mesa-dri"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
+
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
diff --git a/meta-romley/recipes-bsp/formfactor/formfactor/romley/machconfig b/meta-romley/recipes-bsp/formfactor/formfactor/romley/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-romley/recipes-bsp/formfactor/formfactor/romley/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..54da0ff
--- /dev/null
+++ b/meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/meta-romley/recipes-core/tasks/task-core-tools.bbappend b/meta-romley/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..aba487f
--- /dev/null
+++ b/meta-romley/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_romley = " systemtap"
+
diff --git a/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb b/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
new file mode 100755
index 0000000..b48e56d
--- /dev/null
+++ b/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
@@ -0,0 +1,19 @@
+require recipes-graphics/xorg-driver/xorg-driver-video.inc
+
+SUMMARY = "X.Org X server -- Matrox MGA display driver"
+
+DESCRIPTION = "mga is an Xorg driver for Matrox video cards"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=bc1395d2cd32dfc5d6c57d2d8f83d3fc"
+
+DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
+	    virtual/libgl xineramaproto libpciaccess"
+
+EXTRA_OECONF += "--enable-dri"
+
+PR = "r0"
+
+COMPATIBLE_HOST = '(i.86.*-linux|x86_64.*-linux)'
+
+SRC_URI[md5sum] = "f967fb3e655f6f68aa3f495eaadcaac2"
+SRC_URI[sha256sum] = "b657bd5fec4aade6396c683886739b7c8ce57924278bee0e36f13a966eeddff6"
diff --git a/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config/romley/xorg.conf b/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config/romley/xorg.conf
new file mode 100644
index 0000000..28ad0bf
--- /dev/null
+++ b/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config/romley/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Matrox MGA"
+    Driver	"mga"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Matrox MGA"
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
diff --git a/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend b/meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
new file mode 100644
index 0000000..b2808ef
--- /dev/null
+++ b/meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += "--enable-dga"
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..d630dc4
--- /dev/null
+++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_romley = "romley"
+KMACHINE_romley  = "romley"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..558be95
--- /dev/null
+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_romley = "romley"
+KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
+
+SRCREV_machine_pn-linux-yocto_romley ?= "dbe820c277dfa6cbc249d410e8b083286ec484b7"
+SRCREV_meta_pn-linux-yocto_romley ?= "353d43d340e87996b4be4c5f6ddb4447e050b65c"
-- 
1.7.5.4


