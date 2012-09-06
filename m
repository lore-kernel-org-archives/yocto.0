Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06F46E01506
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 11:03:07 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2012 11:02:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="142281166"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.177])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2012 11:02:43 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 11:03:04 -0700
Message-Id: <339167b38b775a632edc1ddfb96b47dd1c34e86d.1346954020.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346954020.git.kishore.k.bodke@intel.com>
References: <cover.1346954020.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-crystalforest: Crystal Forest BSP Created.
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
X-List-Received-Date: Thu, 06 Sep 2012 18:03:08 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Initial checkin for the new Crystal Forest BSP.
This BSP is based on Sandybridge CPU and Cave Creek Chipset.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-crystalforest/COPYING.MIT                     |   17 +++
 meta-crystalforest/README                          |  139 ++++++++++++++++++++
 meta-crystalforest/README.sources                  |   17 +++
 meta-crystalforest/conf/layer.conf                 |   12 ++
 .../conf/machine/crystalforest-shumway.conf        |   26 ++++
 .../conf/machine/crystalforest-stargo.conf         |   27 ++++
 .../formfactor/crystalforest-shumway/machconfig    |    3 +
 .../formfactor/crystalforest-stargo/machconfig     |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../crystalforest-shumway/xorg.conf                |   26 ++++
 .../crystalforest-stargo/xorg.conf                 |   26 ++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.4.bbappend              |   18 +++
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   17 +++
 14 files changed, 337 insertions(+)
 create mode 100644 meta-crystalforest/COPYING.MIT
 create mode 100644 meta-crystalforest/README
 create mode 100644 meta-crystalforest/README.sources
 create mode 100644 meta-crystalforest/binary/.gitignore
 create mode 100644 meta-crystalforest/conf/layer.conf
 create mode 100644 meta-crystalforest/conf/machine/crystalforest-shumway.conf
 create mode 100644 meta-crystalforest/conf/machine/crystalforest-stargo.conf
 create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig
 create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig
 create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf
 create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf
 create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
 create mode 100644 meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend

diff --git a/meta-crystalforest/COPYING.MIT b/meta-crystalforest/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/meta-crystalforest/COPYING.MIT
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
diff --git a/meta-crystalforest/README b/meta-crystalforest/README
new file mode 100644
index 0000000..7b88b22
--- /dev/null
+++ b/meta-crystalforest/README
@@ -0,0 +1,139 @@
+This README file contains information on building the meta-crystalforest
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+The 'Crystal Forest' platform consists of two versions.
+1. STARGO
+2. SHUMWAY
+
+Stargo Platform is based on Intel Sandy Bridge Gladden Processor,plus the Cave Creek chipset.  
+Shumway Platform is based on two Intel Sandy Bridge (SNB-EP ES2 Grade and SNB-EN ES2 Grade)
+Processors plus two Cave Creek Chipsets.
+
+Both Platforms uses Matrox graphics Card.
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
+Maintainer: Kishore Bodke <kishore.k.bodke@intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
+Table of Contents
+=================
+
+  I. Building the meta-crystalforest BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-crystalforest BSP layer
+=======================================
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build a crystalforest
+image by adding the location of the meta-crystalforest layer to
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
+
+  yocto/meta-intel \
+  yocto/meta-intel/meta-crystalforest \
+
+To enable the Crystal Forest Stargo layer, add the crystalforest-stargo MACHINE to local.conf:
+
+  MACHINE ?= "crystalforest-stargo"
+
+To enable the Crystal Forest Shumway layer, add the crystalforest-shumway MACHINE to local.conf:
+
+  MACHINE ?= "crystalforest-shumway"
+
+
+You should then be able to build a crystalforest image as such:
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
+To boot the Stargo Platform:
+
+# dd if=core-image-sato-crystalforest-stargo-20120829033154.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+To boot the Shumway Platform:
+
+# dd if=core-image-sato-crystalforest-shumway-20120829044852.hddimg of=/dev/sdf
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
diff --git a/meta-crystalforest/README.sources b/meta-crystalforest/README.sources
new file mode 100644
index 0000000..76180f1
--- /dev/null
+++ b/meta-crystalforest/README.sources
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
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
+
+The metadata used to generate the images shipped with this BSP, in
+addition to the code contained in this BSP, can also be found at the
+following locations:
+
+git://git.yoctoproject.org/poky.git
+git://git.yoctoproject.org/meta-intel
diff --git a/meta-crystalforest/binary/.gitignore b/meta-crystalforest/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-crystalforest/conf/layer.conf b/meta-crystalforest/conf/layer.conf
new file mode 100644
index 0000000..6b802d6
--- /dev/null
+++ b/meta-crystalforest/conf/layer.conf
@@ -0,0 +1,12 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "crystalforest"
+BBFILE_PATTERN_crystalforest := "^${LAYERDIR}/"
+BBFILE_PRIORITY_crystalforest = "6"
+
+LAYERDEPENDS_crystalforest = "intel"
diff --git a/meta-crystalforest/conf/machine/crystalforest-shumway.conf b/meta-crystalforest/conf/machine/crystalforest-shumway.conf
new file mode 100644
index 0000000..0a2141c
--- /dev/null
+++ b/meta-crystalforest/conf/machine/crystalforest-shumway.conf
@@ -0,0 +1,26 @@
+#@TYPE: Machine
+#@NAME: crystalforest-shumway 
+
+#@DESCRIPTION: Machine configuration for Crystal Forest  Server (SHUMWAY) systems
+# i.e. Two Sandy Bridge Jaketown processors (SNB-EP ES2 Grade and SNB-EN ES2 Grade) + Two Cave Creek Chipsets.
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
+
+require conf/machine/include/tune-x86_64.inc
+require conf/machine/include/ia32-base.inc
+require conf/machine/include/meta-intel.inc
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+	   ${XSERVER_IA32_MATROX_MGA} \
+           "
+#This Kernel Option is required for Intel Quick Assist Technology Software.
+APPEND += "acpi_enforce_resources=lax"
+
+#Uncomment the below Kernel Option if Virtualization is not needed.
+#APPEND += "intel_iommu=off"
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-crystalforest/conf/machine/crystalforest-stargo.conf b/meta-crystalforest/conf/machine/crystalforest-stargo.conf
new file mode 100644
index 0000000..575a504
--- /dev/null
+++ b/meta-crystalforest/conf/machine/crystalforest-stargo.conf
@@ -0,0 +1,27 @@
+#@TYPE: Machine
+#@NAME: crystalforest-stargo 
+
+#@DESCRIPTION: Machine configuration for Crystal Forest (STARGO) systems
+# i.e. One Sandy Bridge based Gladden Processor + One Cave Creek Chipset
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
+
+require conf/machine/include/tune-x86_64.inc
+require conf/machine/include/ia32-base.inc
+require conf/machine/include/meta-intel.inc
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+	   ${XSERVER_IA32_MATROX_MGA} \
+           "
+
+#This Kernel Option is required for Intel Quick Assist Technology Software.
+APPEND += "acpi_enforce_resources=lax"
+
+#Uncomment the below Kernel Option if Virtualization is not needed.
+#APPEND += "intel_iommu=off"
+
+SYSLINUX_OPTS = "serial 0 115200"
+SERIAL_CONSOLE = "115200 ttyS0"
+APPEND += "console=ttyS0,115200 console=tty0"
diff --git a/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig b/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig b/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..54da0ff
--- /dev/null
+++ b/meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf
new file mode 100644
index 0000000..28ad0bf
--- /dev/null
+++ b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf
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
diff --git a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf
new file mode 100644
index 0000000..28ad0bf
--- /dev/null
+++ b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf
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
diff --git a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
new file mode 100644
index 0000000..db56439
--- /dev/null
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -0,0 +1,18 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crystalforest-stargo = "crystalforest-stargo"
+KMACHINE_crystalforest-stargo  = "crystalforest"
+KBRANCH_crystalforest-stargo = "standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_crystalforest-stargo ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
+SRCREV_meta_pn-linux-yocto-rt_crystalforest-stargo ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+
+
+COMPATIBLE_MACHINE_crystalforest-shumway = "crystalforest-shumway"
+KMACHINE_crystalforest-shumway  = "crystalforest"
+KBRANCH_crystalforest-shumway = "standard/preempt-rt/base"
+
+SRCREV_machine_pn-linux-yocto-rt_crystalforest-shumway ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
+SRCREV_meta_pn-linux-yocto-rt_crystalforest-shumway ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+
+module_autoload_uio = "uio"
diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
new file mode 100644
index 0000000..9be788c
--- /dev/null
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -0,0 +1,17 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_crystalforest-stargo = "crystalforest-stargo"
+KMACHINE_crystalforest-stargo  = "crystalforest"
+KBRANCH_crystalforest-stargo  = "standard/common-pc-64/crystalforest"
+
+SRCREV_machine_pn-linux-yocto_crystalforest-stargo ?= "0985844fa6235422c67ef269952fa4e765f252f9"
+SRCREV_meta_pn-linux-yocto_crystalforest-stargo ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+
+COMPATIBLE_MACHINE_crystalforest-shumway = "crystalforest-shumway"
+KMACHINE_crystalforest-shumway  = "crystalforest"
+KBRANCH_crystalforest-shumway  = "standard/common-pc-64/crystalforest"
+
+SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?= "0985844fa6235422c67ef269952fa4e765f252f9"
+SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?= "463299bc2e533e1bd38b0053ae7b210980f269c3"
+
+module_autoload_uio = "uio"
-- 
1.7.9.5


