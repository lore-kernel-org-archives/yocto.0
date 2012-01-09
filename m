Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA5ECE0074A
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 15:09:55 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2012 15:09:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94573745"
Received: from rp614v4.sc.intel.com (HELO localhost) ([143.183.188.169])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2012 15:09:55 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon,  9 Jan 2012 15:08:33 -0800
Message-Id: <f49ef790e5836842adbd1863776c77d6d0716d61.1326150136.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1326150136.git.kishore.k.bodke@intel.com>
References: <cover.1326150136.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: Create new layer for cedartrail System.
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
X-List-Received-Date: Mon, 09 Jan 2012 23:09:56 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This layer provides the initial version of the BSP for Cedar Trail
platform. The Cedar Trail platform is based on the Cedarview processor
and Tiger Point Chipset.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 MAINTAINERS                                        |    3 +
 meta-cedartrail/COPYING.MIT                        |   17 +++
 meta-cedartrail/README                             |  111 ++++++++++++++++++++
 meta-cedartrail/README.sources                     |   17 +++
 meta-cedartrail/conf/layer.conf                    |   10 ++
 meta-cedartrail/conf/machine/cedartrail.conf       |   15 +++
 .../formfactor/formfactor/cedartrail/machconfig    |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
 .../xserver-xf86-config/cedartrail/xorg.conf       |   26 +++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++
 13 files changed, 226 insertions(+), 0 deletions(-)
 create mode 100755 meta-cedartrail/COPYING.MIT
 create mode 100755 meta-cedartrail/README
 create mode 100755 meta-cedartrail/README.sources
 create mode 100644 meta-cedartrail/binary/.gitignore
 create mode 100644 meta-cedartrail/conf/layer.conf
 create mode 100644 meta-cedartrail/conf/machine/cedartrail.conf
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/MAINTAINERS b/MAINTAINERS
index 49b536e..c915a09 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -32,6 +32,9 @@ Please keep this list in alphabetical order.
 Maintainers List (try to look for most precise areas first)
 
 		-----------------------------------
+CEDARTRAIL
+M:      Kishore Bodke <kishore.k.bodke@intel.com>
+F:      meta-cedartrail/
 
 COMMON
 M:	Tom Zanussi <tom.zanussi@intel.com>
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
index 0000000..295e9ff
--- /dev/null
+++ b/meta-cedartrail/README
@@ -0,0 +1,111 @@
+This README file contains information on building the meta-cedartrail
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Kishore Bodke <kishore.k.bodke@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
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
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
+
+        yocto/meta-intel \  
+	yocto/meta-intel/meta-cedartrail \
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
+# dd if=core-image-sato-cedartrail-20120105232035.hddimg of=/dev/sdf
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
new file mode 100644
index 0000000..e69de29
diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
new file mode 100644
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
new file mode 100644
index 0000000..ec84347
--- /dev/null
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -0,0 +1,15 @@
+#@TYPE: Machine
+#@NAME: Cedartrail
+
+#@DESCRIPTION: Machine configuration for Cedartrail systems
+# i.e. Cedarview processor + Tiger Point Chipset
+
+include conf/machine/include/tune-atom.inc
+require conf/machine/include/ia32-base.inc
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_VESA} \
+           "
+
+APPEND += "video=vesafb vga=0x318"
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..54da0ff
--- /dev/null
+++ b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend b/meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
new file mode 100644
index 0000000..e972712
--- /dev/null
+++ b/meta-cedartrail/recipes-core/tasks/task-core-tools.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_cedartrail = " systemtap"
+
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
new file mode 100644
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
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..372b139
--- /dev/null
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+KMACHINE_cedartrail  = "cedartrail"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_cedartrail ?= XXXX
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..44cd4e8
--- /dev/null
+++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_cedartrail = "cedartrail"
+KMACHINE_cedartrail  = "yocto/standard/cedartrail"
+KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
+
+SRCREV_machine_pn-linux-yocto_cedartrail ?= "153cb7313697f6638109ed6ce40009af353eeb94"
+SRCREV_meta_pn-linux-yocto_cedartrail ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
-- 
1.7.5.4


