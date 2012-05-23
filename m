Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 057C1E0140C
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 May 2012 12:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156323090"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2012 12:52:23 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:28 -0500
Message-Id: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 01/20] meta-chiefriver: new layer for Chief River (Ivy Bridge/Panther Point) systems
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
X-List-Received-Date: Wed, 23 May 2012 19:52:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This layer provides support for Ivy Bridge + Panther Point Intel systems.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-chiefriver/COPYING.MIT                        |   17 +++
 meta-chiefriver/README                             |  107 ++++++++++++++++++++
 meta-chiefriver/README.sources                     |   17 +++
 meta-chiefriver/conf/layer.conf                    |   10 ++
 meta-chiefriver/conf/machine/chiefriver.conf       |   15 +++
 .../formfactor/formfactor/chiefriver/machconfig    |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../tasks/task-core-tools-profile.bbappend         |    2 +
 .../xserver-xf86-config/chiefriver/xorg.conf       |   26 +++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 ++
 12 files changed, 219 insertions(+), 0 deletions(-)
 create mode 100644 meta-chiefriver/COPYING.MIT
 create mode 100644 meta-chiefriver/README
 create mode 100644 meta-chiefriver/README.sources
 create mode 100644 meta-chiefriver/conf/layer.conf
 create mode 100644 meta-chiefriver/conf/machine/chiefriver.conf
 create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfactor/chiefriver/machconfig
 create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
 create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config/chiefriver/xorg.conf
 create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-chiefriver/COPYING.MIT b/meta-chiefriver/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/meta-chiefriver/COPYING.MIT
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
diff --git a/meta-chiefriver/README b/meta-chiefriver/README
new file mode 100644
index 0000000..49e4461
--- /dev/null
+++ b/meta-chiefriver/README
@@ -0,0 +1,107 @@
+This README file contains information on building the meta-chiefriver
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+The 'Chief River' platform consists of the Intel Ivy Bridge processor,
+plus the Panther Point PCH.  This BSP assumes that the Ivy Bridge
+integrated graphics are being used.
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
+Table of Contents
+=================
+
+  I. Building the meta-chiefriver BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-chiefriver BSP layer
+=========================================
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build a chiefriver
+image by adding the location of the meta-chiefriver layer to
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
+
+  yocto/meta-intel \
+  yocto/meta-intel/meta-chiefriver \
+
+To enable the chiefriver layer, add the chiefriver MACHINE to local.conf:
+
+  MACHINE ?= "chiefriver"
+
+You should then be able to build a chiefriver image as such:
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
+# dd if=core-image-sato-chiefriver-20101207053738.hddimg of=/dev/sdf
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
diff --git a/meta-chiefriver/README.sources b/meta-chiefriver/README.sources
new file mode 100644
index 0000000..76180f1
--- /dev/null
+++ b/meta-chiefriver/README.sources
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
diff --git a/meta-chiefriver/conf/layer.conf b/meta-chiefriver/conf/layer.conf
new file mode 100644
index 0000000..5dc3c02
--- /dev/null
+++ b/meta-chiefriver/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "chiefriver"
+BBFILE_PATTERN_chiefriver := "^${LAYERDIR}/"
+BBFILE_PRIORITY_chiefriver = "6"
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
new file mode 100644
index 0000000..c9237f4
--- /dev/null
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -0,0 +1,15 @@
+#@TYPE: Machine
+#@NAME: chiefriver
+
+#@DESCRIPTION: Machine configuration for Chief River systems
+# i.e. Ivy Bridge + Panther Point
+
+PREFERRED_VERSION_linux-yocto ?= "3.2%"
+
+require conf/machine/include/tune-x86_64.inc
+require conf/machine/include/ia32-base.inc
+
+XSERVER ?= "${XSERVER_IA32_BASE} \
+           ${XSERVER_IA32_EXT} \
+           ${XSERVER_IA32_I965} \
+           "
diff --git a/meta-chiefriver/recipes-bsp/formfactor/formfactor/chiefriver/machconfig b/meta-chiefriver/recipes-bsp/formfactor/formfactor/chiefriver/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-chiefriver/recipes-bsp/formfactor/formfactor/chiefriver/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..54da0ff
--- /dev/null
+++ b/meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+ 
+PRINC = "1"
diff --git a/meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend b/meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
new file mode 100644
index 0000000..4631da3
--- /dev/null
+++ b/meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
@@ -0,0 +1,2 @@
+RRECOMMENDS_task-core-tools-profile_append_chiefriver = " systemtap"
+
diff --git a/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config/chiefriver/xorg.conf b/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config/chiefriver/xorg.conf
new file mode 100644
index 0000000..96b94b4
--- /dev/null
+++ b/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config/chiefriver/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Intel Graphics Driver"
+    Driver	"intel"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Intel Graphics Driver"
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
diff --git a/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..9e4a4a0
--- /dev/null
+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_chiefriver = "chiefriver"
+KMACHINE_chiefriver  = "chiefriver"
+
+# Update the following to use a different BSP branch or meta SRCREV
+#KBRANCH_chiefriver  = "standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_chiefriver ?= XXXX
+#SRCREV_meta_pn-linux-yocto-rt_chiefriver ?= XXXX
diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..0b707be
--- /dev/null
+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_chiefriver = "chiefriver"
+KMACHINE_chiefriver  = "chiefriver"
+KBRANCH_chiefriver  = "standard/default/common-pc-64/chiefriver"
+
+SRCREV_machine_pn-linux-yocto_chiefriver ?= "dbe820c277dfa6cbc249d410e8b083286ec484b7"
+SRCREV_meta_pn-linux-yocto_chiefriver ?= "353d43d340e87996b4be4c5f6ddb4447e050b65c"
-- 
1.7.0.4


