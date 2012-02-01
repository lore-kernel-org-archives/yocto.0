Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43AB9E0059B
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:26:37 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 14:26:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102153809"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 14:26:36 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>, Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 14:26:02 -0800
Message-Id: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1328135056.git.dvhart@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
Subject: [pull-sys940x 1/4] meta-intel: Add Inforce SYS940x BSP
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
X-List-Received-Date: Wed, 01 Feb 2012 22:26:37 -0000

The Inforce SYS940x-ECX Developer-Ready Reference Platform features:
o Intel Atom E6xx (0.6-1.6 GHz)
o Up to 1GB on-board DDR2
o Intel Platform Controller Hub EG20T
o VGA,LVDS
o HD Audio
o SD Card
o Dual SATA
o Mini-PCIe

http://www.inforcecomputing.com/SYS940X_ECX.html

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/COPYING.MIT                           |   17 +++
 meta-sys940x/README                                |  140 ++++++++++++++++++++
 meta-sys940x/README.sources                        |   18 +++
 meta-sys940x/conf/layer.conf                       |   10 ++
 meta-sys940x/conf/machine/sys940x-noemgd.conf      |   19 +++
 meta-sys940x/conf/machine/sys940x.conf             |   23 ++++
 .../formfactor/sys940x-noemgd/machconfig           |    3 +
 .../formfactor/formfactor/sys940x/machconfig       |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../xserver-xf86-config/sys940x-noemgd/xorg.conf   |   26 ++++
 .../xserver-xf86-config/sys940x/xorg.conf          |   48 +++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.0.bbappend              |   14 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   17 +++
 14 files changed, 344 insertions(+), 0 deletions(-)
 create mode 100644 meta-sys940x/COPYING.MIT
 create mode 100644 meta-sys940x/README
 create mode 100644 meta-sys940x/README.sources
 create mode 100644 meta-sys940x/binary/.gitignore
 create mode 100644 meta-sys940x/conf/layer.conf
 create mode 100644 meta-sys940x/conf/machine/sys940x-noemgd.conf
 create mode 100644 meta-sys940x/conf/machine/sys940x.conf
 create mode 100644 meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x-noemgd/machconfig
 create mode 100644 meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x/machconfig
 create mode 100644 meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x-noemgd/xorg.conf
 create mode 100644 meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x/xorg.conf
 create mode 100644 meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 create mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend

diff --git a/meta-sys940x/COPYING.MIT b/meta-sys940x/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/meta-sys940x/COPYING.MIT
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
diff --git a/meta-sys940x/README b/meta-sys940x/README
new file mode 100644
index 0000000..e349008
--- /dev/null
+++ b/meta-sys940x/README
@@ -0,0 +1,140 @@
+This README file contains information on building the meta-sys940x BSP
+layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+The Inforce SYS940x platform consists of the Intel Atom E6xx
+processor, plus the Intel EG20T Platform Controller Hub (Tunnel Creek
++ Topcliff).
+
+It also supports the E6xx embedded on-chip graphics via the Intel
+Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
+
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
+Maintainer: Darren Hart <dvhart@linux.intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
+Table of Contents
+=================
+
+  I. Building the meta-sys940x BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-sys940x BSP layer
+===================================
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build an sys940x image
+by adding the location of the meta-sys940x layer to bblayers.conf, along
+with the meta-intel layer itself (to access common metadata shared
+between BSPs) e.g.:
+
+  yocto/meta-intel \
+  yocto/meta-intel/meta-sys940x \
+
+The meta-sys940x layer contains support for two different machine
+configurations. These configurations are identical except for the fact
+that the one prefixed with 'sys940x' makes use of the Intel-proprietary
+EMGD 1.10 graphics driver, while the one prefixed with 'sys940x-noemgd'
+does not.
+
+If you want to enable the layer that supports EMGD graphics add the
+following to the local.conf file:
+
+  MACHINE ?= "sys940x"
+
+The 'sys940x' machine includes the emgd-driver-bin package, which has a
+proprietary license that must be whitelisted by adding the string
+"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
+in your local.conf.  For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
+
+If you want to enable the layer that does not support EMGD graphics
+add the following to the local.conf file:
+
+  MACHINE ?= "sys940x-noemgd"
+
+You should then be able to build an sys940x image as such:
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
+# dd if=core-image-sato-sys940x-20101207053738.hddimg of=/dev/sdf
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
diff --git a/meta-sys940x/README.sources b/meta-sys940x/README.sources
new file mode 100644
index 0000000..c6cab4d
--- /dev/null
+++ b/meta-sys940x/README.sources
@@ -0,0 +1,18 @@
+The sources for the packages comprising the images shipped with this
+BSP can be found at the following location:
+
+http://downloads.yoctoproject.org/mirror/sources/
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can be found at the
+following location:
+
+# FIXME: update the following link after the Yocto Project 1.2 release
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-RELEASENAME-6.0.tar.bz2
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can also be found at the
+following locations:
+
+git://git.yoctoproject.org/poky.git
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-sys940x/binary/.gitignore b/meta-sys940x/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-sys940x/conf/layer.conf b/meta-sys940x/conf/layer.conf
new file mode 100644
index 0000000..459c710
--- /dev/null
+++ b/meta-sys940x/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "sys940x"
+BBFILE_PATTERN_sys940x := "^${LAYERDIR}/"
+BBFILE_PRIORITY_sys940x = "6"
diff --git a/meta-sys940x/conf/machine/sys940x-noemgd.conf b/meta-sys940x/conf/machine/sys940x-noemgd.conf
new file mode 100644
index 0000000..8a1c20f
--- /dev/null
+++ b/meta-sys940x/conf/machine/sys940x-noemgd.conf
@@ -0,0 +1,19 @@
+#@TYPE: Machine
+#@NAME: sys940x
+
+#@DESCRIPTION: Machine configuration for Inforce SYS940X systems
+# i.e. E660 + EG20T
+
+include conf/machine/include/tune-atom.inc
+include conf/machine/include/ia32-base.inc
+
+# Add "pcbios" if you have a non-efi version of the firmware
+MACHINE_FEATURES += "efi pcbios"
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_VESA} \
+           "
+
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
new file mode 100644
index 0000000..ceb6e0f
--- /dev/null
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -0,0 +1,23 @@
+#@TYPE: Machine
+#@NAME: sys940x
+
+#@DESCRIPTION: Machine configuration for Inforce SYS940x systems
+# i.e. E660 + EG20T
+
+include conf/machine/include/tune-atom.inc
+include conf/machine/include/ia32-base.inc
+
+# Add "pcbios" if you have a non-efi version of the firmware
+MACHINE_FEATURES += "efi pcbios"
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_EMGD} \
+           "
+
+PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
+PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x-noemgd/machconfig b/meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x-noemgd/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x-noemgd/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x/machconfig b/meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-sys940x/recipes-bsp/formfactor/formfactor/sys940x/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..54da0ff
--- /dev/null
+++ b/meta-sys940x/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x-noemgd/xorg.conf b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x-noemgd/xorg.conf
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x-noemgd/xorg.conf
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
diff --git a/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x/xorg.conf b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x/xorg.conf
new file mode 100644
index 0000000..73736ac
--- /dev/null
+++ b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config/sys940x/xorg.conf
@@ -0,0 +1,48 @@
+##
+## X Config options generated from CED
+## x11 conf skeleton
+## DriverVer=
+##
+
+Section "Screen"
+    Identifier    "Screen0"
+    Device        "IntelEMGD-0"
+    Monitor       "Monitor0"
+    SubSection    "Display"
+    EndSubSection
+EndSection
+
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
+    Option     "ALL/1/General/PortOrder"      "32400"
+    Option     "ALL/1/General/DisplayConfig"  "1"
+    Option     "ALL/1/General/DisplayDetect"  "1"
+    Option     "ALL/1/General/TuningWA" "1"
+    Option     "ALL/1/Port/4/General/name"           "lvds"
+    Option     "ALL/1/Port/4/General/EdidAvail"      "3"
+    Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
+    Option     "ALL/1/Port/4/General/Rotation"       "0"
+    Option     "ALL/1/Port/4/General/Edid"           "0"
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen 0       "Screen0" 0 0
+   # InputDevice    "Mouse0" "CorePointer"
+   # InputDevice    "Keyboard0" "CoreKeyboard"
+   # InputDevice    "DevInputMice" "SendCoreEvents"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git a/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-sys940x/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
new file mode 100644
index 0000000..5d3567d
--- /dev/null
+++ b/meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -0,0 +1,14 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_sys940x = "sys940x"
+KMACHINE_sys940x = "sys940x"
+KERNEL_FEATURES_append_sys940x += " cfg/smp.scc cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
+KMACHINE_sys940x-noemgd = "sys940x"
+KERNEL_FEATURES_append_sys940x-noemgd += " cfg/smp.scc cfg/efi-ext.scc"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_sys940x = "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_sys940x ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_sys940x ?= XXXX
diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend
new file mode 100644
index 0000000..1beb9c2
--- /dev/null
+++ b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -0,0 +1,17 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+
+COMPATIBLE_MACHINE_sys940x = "sys940x"
+KMACHINE_sys940x  = "sys940x"
+KBRANCH_sys940x = "yocto/standard/base"
+KERNEL_FEATURES_append_sys940x += " cfg/smp.scc cfg/efi-ext.scc"
+
+COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
+KMACHINE_sys940x-noemgd  = "sys940x"
+KBRANCH_sys940x-noemgd = "yocto/standard/base"
+KERNEL_FEATURES_append_sys940x-noemgd += " cfg/smp.scc cfg/efi-ext.scc"
+
+SRCREV_machine_pn-linux-yocto_sys940x ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
+SRCREV_meta_pn-linux-yocto_sys940x ?= "c957dd0889bfec5aeb8d6b4ce82550d841cad987"
+SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
+SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?= "c957dd0889bfec5aeb8d6b4ce82550d841cad987"
-- 
1.7.6.5


