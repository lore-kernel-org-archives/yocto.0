Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77C1FE0121B;
	Fri,  8 Feb 2013 14:32:15 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2013 14:32:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="284769977"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.181])
	by fmsmga001.fm.intel.com with ESMTP; 08 Feb 2013 14:32:13 -0800
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com, dvhart@linux.intel.com, nitin.a.kamble@intel.com,
	rahul.saxena@intel.com, song.liu@intel.com, meta-intel@yoctoproject.org,
	yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:34:38 -0800
Message-Id: <af0b8607af65a3978a2d757ef981f42fcbf87acf.1360362497.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1360362497.git.kishore.k.bodke@intel.com>
References: <cover.1360362497.git.kishore.k.bodke@intel.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] [meta-intel] Cedartrail: Remove Cedartrail BSP
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
X-List-Received-Date: Fri, 08 Feb 2013 22:32:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Kishore Bodke <kishore.k.bodke@intel.com>

Cedartrail will be no longer supported for
Yocto 1.4 Release.
Remove the Cedartrail BSP from meta-intel.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-cedartrail/COPYING.MIT                        |   17 --
 meta-cedartrail/README                             |  199 --------------------
 meta-cedartrail/README.sources                     |   17 --
 meta-cedartrail/conf/layer.conf                    |   12 --
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ---
 meta-cedartrail/conf/machine/cedartrail.conf       |   29 ---
 .../formfactor/cedartrail-nopvr/machconfig         |    3 -
 .../formfactor/formfactor/cedartrail/machconfig    |    3 -
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 -
 .../images/core-image-cdv-media-sdk.bb             |   12 --
 .../images/core-image-cdv-media.bb                 |   13 --
 .../xorg-driver/cdv-pvr-driver_1.0.3.bb            |  197 -------------------
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 ---
 .../xserver-xf86-config/cedartrail/xorg.conf       |   19 --
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
 .../linux/linux-yocto-rt_3.0.bbappend              |   18 --
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   23 ---
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   21 ---
 .../video-samples/bigbuckbunny-ogg.bb              |   22 ---
 19 files changed, 656 deletions(-)
 delete mode 100755 meta-cedartrail/COPYING.MIT
 delete mode 100755 meta-cedartrail/README
 delete mode 100755 meta-cedartrail/README.sources
 delete mode 100644 meta-cedartrail/binary/.gitignore
 delete mode 100644 meta-cedartrail/conf/layer.conf
 delete mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 delete mode 100644 meta-cedartrail/conf/machine/cedartrail.conf
 delete mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 delete mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 delete mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
 delete mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
 delete mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 delete mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
 delete mode 100644 meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
 delete mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 delete mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb

diff --git a/meta-cedartrail/COPYING.MIT b/meta-cedartrail/COPYING.MIT
deleted file mode 100755
index fb950dc..0000000
--- a/meta-cedartrail/COPYING.MIT
+++ /dev/null
@@ -1,17 +0,0 @@
-Permission is hereby granted, free of charge, to any person obtaining a copy 
-of this software and associated documentation files (the "Software"), to deal 
-in the Software without restriction, including without limitation the rights 
-to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
-copies of the Software, and to permit persons to whom the Software is 
-furnished to do so, subject to the following conditions:
-
-The above copyright notice and this permission notice shall be included in 
-all copies or substantial portions of the Software.
-
-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
-IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
-FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
-AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
-LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
-OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
-THE SOFTWARE.
diff --git a/meta-cedartrail/README b/meta-cedartrail/README
deleted file mode 100755
index fe84c2d..0000000
--- a/meta-cedartrail/README
+++ /dev/null
@@ -1,199 +0,0 @@
-This README file contains information on building the meta-cedartrail
-BSP layer, and booting the images contained in the /binary directory.
-Please see the corresponding sections below for details.
-
-The 'Cedar Trail' platform consists of the Intel® Atom™
-N2600/N2800/D2550 processor, plus the Intel® NM10 Express Chispset
-(Cedarview + Tiger Point).
-
-It also supports on-chip SGX545 graphics and media accelerator
-via the Cedar Trail Power VR (PVR) graphics driver.
-
-Further information about the platforms supported by this BSP can be
-found here:
-
-  http://www.intel.com/p/en_US/embedded/hwsw/hardware/atom-n2000-d2000/overview
-
-Information on all Intel® embedded platforms can be found here:
-
-  http://www.intel.com/p/en_US/embedded/hwsw/hardware
-
-
-Compliance
-==========
-
-This BSP is compliant with the Yocto Project as per the requirements
-listed here:
-
-  https://www.yoctoproject.org/webform/yocto-project-compatible-registration
-
-
-Dependencies
-============
-
-This layer depends on:
-
-  URI: git://git.openembedded.org/bitbake
-  branch: master
-
-  URI: git://git.openembedded.org/openembedded-core
-  layers: meta
-  branch: master
-
-  URI: git://git.yoctoproject.org/meta-intel
-  layers: intel
-  branch: master
-
-
-Patches
-=======
-
-Please submit any patches against this BSP to the Yocto mailing list
-(yocto@yoctoproject.org) and cc: the maintainer:
-
-Maintainer: Kishore Bodke <kishore.k.bodke@intel.com>
-
-Please see the meta-intel/MAINTAINERS file for more details.
-
-Table of Contents
-=================
-
- I. Building the meta-cedartrail BSP layer
-II. Booting the images in /binary
-
-
-I. Building the meta-cedartrail BSP layer
-=========================================
-
-In order to build an image with BSP support for a given release, you
-need to download the corresponding BSP tarball from the 'Board Support
-Package (BSP) Downloads' page of the Yocto Project website.
-
-Having done that, and assuming you extracted the BSP tarball contents
-at the top-level of your yocto build tree, you can build a cedartrail 
-image by adding the location of the meta-cedartrail layer to
-bblayers.conf, along with the meta-intel layer itself (to access
-common metadata shared between BSPs) e.g.:
-
-        yocto/meta-intel \  
-	yocto/meta-intel/meta-cedartrail \
-
-To enable the cedartrail layer that supports Power VR graphics,
-add the cedartrail MACHINE to local.conf:
-
-  MACHINE ?= "cedartrail"
-
-Power VR Graphics user-space driver binaries are covered by a
-"Intel Free Distribution Binary License". The build of this driver
-can be enabled by adding the following line to the local.conf file:
-
-LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0.3"
-
-To enable the layer that does not support Power VR graphics
-add the following to the local.conf file:
-
- MACHINE ?= "cedartrail-nopvr"
-
-
-You should then be able to build a cedartrail image as such:
-
-  $ source oe-init-build-env
-  $ bitbake core-image-sato
-
-The above image will not give you the webkit feature and will not
-have the Audio and Video media samples in the image.
-
-If you want the webkit feature and Audio , Video media samples built
-into the image by default, You should build the custom image by 
-doing the following:
-
-  $ source oe-init-build-env
-  $ bitbake core-image-cdv-media
-
-At the end of a successful build, you should have a live image that
-you can boot from a USB flash drive (see instructions on how to do
-that below, in the section 'Booting the images from /binary').
-
-NOTE: The 'cedartrail' machine will include support for hardware video
-acceleration via gstreamer if and only if the "commercial" string is
-added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
-
-For example:
-
-  LICENSE_FLAGS_WHITELIST = "license_cdv-pvr-driver_1.0.3 commercial"
-
-The reason this is needed is to prevent the image from including
-anything that might violate the license terms of the packages used to
-implement the the video acceleration feature, such as gst-ffmpeg and
-ffmpeg.  As always, please consult the licenses included in the
-specific packages for details if you use packages that require
-particular LICENSE_FLAGS.
-
-As an alternative to downloading the BSP tarball, you can also work
-directly from the meta-intel git repository.  For each BSP in the
-'meta-intel' repository, there are multiple branches, one
-corresponding to each major release starting with 'laverne' (0.90), in
-addition to the latest code which tracks the current master.  Instead
-of extracting a BSP tarball at the top level of your yocto build tree,
-you can equivalently check out the appropriate branch from the
-meta-intel repository at the same location.
-
-
-II. Booting the images in /binary
-==================================
-
-This BSP contains bootable live images, which can be used to directly
-boot Yocto off of a USB flash drive.
-
-Under Linux, insert a USB flash drive.  Assuming the USB flash drive
-takes device /dev/sdf, use dd to copy the live image to it.  For
-example:
-
-# dd if=core-image-sato-cedartrail-20120105232035.hddimg of=/dev/sdf
-# sync
-# eject /dev/sdf
-
-This should give you a bootable USB flash device.  Insert the device
-into a bootable USB socket on the target, and power on.  This should
-result in a system booted to the Sato graphical desktop.
-
-If you want a terminal, use the arrows at the top of the UI to move to
-different pages of available applications, one of which is named
-'Terminal'.  Clicking that should give you a root terminal.
-
-If you want to ssh into the system, you can use the root terminal to
-ifconfig the IP address and use that to ssh in.  The root password is
-empty, so to log in type 'root' for the user name and hit 'Enter' at
-the Password prompt: and you should be in.
-
-----
-
-If you find you're getting corrupt images on the USB (it doesn't show
-the syslinux boot: prompt, or the boot: prompt contains strange
-characters), try doing this first:
-
-# dd if=/dev/zero of=/dev/sdf bs=1M count=512
-
-Miscellaneous Notes
-====================
-
-Video and Music Samples
------------------------
-This BSP includes recipes to download Ogg format video and
-music files that can be played-back with the Video and music players
-included in the sato images.  The sample files are installed in
-/home/Music and /home/Videos directories.
-
-
-Adding Glxgears to image
--------------------------
-Glxgears can be added to the generated image by adding "tools-testapps"
-option to the extra image features variable in the default local.conf
-before building the BSP.
-
-e.g. to add Glxgears, locate the following line in local.conf
-EXTRA_IMAGE_FEATURES = "debug-tweaks"
-
-and change above line to..
-
-EXTRA_IMAGE_FEATURES = "debug-tweaks tools-testapps"
diff --git a/meta-cedartrail/README.sources b/meta-cedartrail/README.sources
deleted file mode 100755
index 0d4d849..0000000
--- a/meta-cedartrail/README.sources
+++ /dev/null
@@ -1,17 +0,0 @@
-The sources for the packages comprising the images shipped with this
-BSP can be found at the following location:
-
-http://downloads.yoctoproject.org/mirror/sources/
-
-The metadata used to generate the images shipped with this BSP, in
-addition to the code contained in this BSP, can be found at the
-following location:
-
-http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-danny-8.0.tar.bz2
-
-The metadata used to generate the images shipped with this BSP, in
-addition to the code contained in this BSP, can also be found at the
-following locations:
-
-git://git.yoctoproject.org/poky.git
-git://git.yoctoproject.org/meta-intel
diff --git a/meta-cedartrail/binary/.gitignore b/meta-cedartrail/binary/.gitignore
deleted file mode 100644
index e69de29..0000000
diff --git a/meta-cedartrail/conf/layer.conf b/meta-cedartrail/conf/layer.conf
deleted file mode 100644
index 0166b35..0000000
--- a/meta-cedartrail/conf/layer.conf
+++ /dev/null
@@ -1,12 +0,0 @@
-# We have a conf and classes directory, add to BBPATH
-BBPATH .= ":${LAYERDIR}"
-
-# We have a recipes directory, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
-	${LAYERDIR}/recipes-*/*/*.bbappend"
-
-BBFILE_COLLECTIONS += "cedartrail"
-BBFILE_PATTERN_cedartrail := "^${LAYERDIR}/"
-BBFILE_PRIORITY_cedartrail = "6"
-
-LAYERDEPENDS_cedartrail = "intel"
diff --git a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf b/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
deleted file mode 100644
index 7ccc6e1..0000000
--- a/meta-cedartrail/conf/machine/cedartrail-nopvr.conf
+++ /dev/null
@@ -1,21 +0,0 @@
-#@TYPE: Machine
-#@NAME: cedartrail-nopvr
-
-#@WEBTITLE: Intel Atom N2600/N2800/D2550 (Formerly Cedarview) Processor with NM10 Chipset (Cedar Trail Platform) with Open Source VESA Graphics
-
-#@DESCRIPTION: Machine configuration for Cedar Trail systems
-# i.e. N2600/N2800/D2550 + NM10
-
-require conf/machine/include/tune-atom.inc
-require conf/machine/include/ia32-base.inc
-
-XSERVER ?= "${XSERVER_IA32_BASE} \
-           ${XSERVER_IA32_EXT} \
-           ${XSERVER_IA32_VESA} \
-           "
-
-SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLE = "115200 ttyS0"
-APPEND += "console=ttyS0,115200 console=tty0"
-APPEND += "video=vesafb vga=0x318"
-
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
deleted file mode 100644
index a5fa0f0..0000000
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ /dev/null
@@ -1,29 +0,0 @@
-#@TYPE: Machine
-#@NAME: cedartrail
-
-#@WEBTITLE: Intel Atom N2600/N2800/D2550 (Formerly Cedarview) Processor with NM10 Chipset (Cedar Trail Platform) and PVR Accelerated Graphics
-
-#@DESCRIPTION: Machine configuration for Cedar Trail systems
-# i.e. N2600/N2800/D2550 + NM10
-
-require conf/machine/include/tune-atom.inc
-require conf/machine/include/ia32-base.inc
-
-MACHINE_FEATURES += "pcbios efi va-impl-intel"
-
-XSERVER ?= "${XSERVER_IA32_BASE} \
-           ${XSERVER_IA32_EXT} \
-           cdv-pvr-driver \
-           "
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
-PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "8.0.4"
-PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
-
-SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLE = "115200 ttyS0"
-APPEND += "console=ttyS0,115200 console=tty0"
-
-VA_FEATURES ?= "gst-va-intel va-intel"
-
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
deleted file mode 100644
index ffce012..0000000
--- a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
+++ /dev/null
@@ -1,3 +0,0 @@
-# Assume a USB mouse and keyboard are connected
-HAVE_TOUCHSCREEN=0
-HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig b/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
deleted file mode 100644
index ffce012..0000000
--- a/meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
+++ /dev/null
@@ -1,3 +0,0 @@
-# Assume a USB mouse and keyboard are connected
-HAVE_TOUCHSCREEN=0
-HAVE_KEYBOARD=1
diff --git a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
deleted file mode 100644
index 2a3ee7a..0000000
--- a/meta-cedartrail/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
- 
-PRINC := "${@int(PRINC) + 2}"
diff --git a/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb b/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
deleted file mode 100644
index 364d7b7..0000000
--- a/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-#
-# Copyright (C) 2011 Intel Corporation.
-# Author: Kishore Bodke
-# kishore.k.bodke@intel.com
-
-require recipes-sato/images/core-image-sato-sdk.bb
-
-IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-samples"
-
-LICENSE = "MIT"
-
-PR = "r0"
diff --git a/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb b/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
deleted file mode 100644
index a13ea09..0000000
--- a/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-#
-# Copyright (C) 2011 Intel Corporation.
-# Author:  Kishore Bodke 
-# kishore.k.bodke@intel.com
-#
-
-require recipes-sato/images/core-image-sato.bb
-
-IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-samples"
-
-LICENSE = "MIT"
-
-PR = "r0"
diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
deleted file mode 100644
index ebb5891..0000000
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
+++ /dev/null
@@ -1,197 +0,0 @@
-SUMMARY = "Cedartrail PowerVR Graphics Driver version 1.0.3 binaries"
-DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
-The binaries are covered by the Intel Free Distribution Binary License. \
-The user must make himself/herself aware of the Licensing terms \
-before enabling build of the Cedartrail PowerVR Graphics Driver via \
-this recipe.  Please see the README in meta-cedartrail for instructions \
-for enabling the build of the driver "
-
-LICENSE_FLAGS = "license_${PN}_${PV}"
-LICENSE = "Intel Free Distribution Binary License"
-LIC_FILES_CHKSUM = " \
-    file://${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
-    file://${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
-
-DEPENDS = "rpm-native libva"
-
-PR = "r5"
-
-PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
-PSB-VIDEO-REV = "1.0.3"
-
-PVR-BIN = "pvr-bin-cdv-1.0.3-1.1.i586.rpm"
-PVR-BIN-REV = "1.7.862890"
-PVR-BIN-REV_N = "1.7.862890_05"
-PVR-BIN-REV_LIC = "1.0.3"
-PVR-BIN-DEV = "pvr-bin-cdv-devel-1.0.3-1.1.i586.rpm"
-
-LIBWSBM = "libwsbm-cdv-1.1.0-3.1.i586.rpm"
-LIBWSBM-DEV = "libwsbm-cdv-devel-1.1.0-3.1.i586.rpm"
-
-
-NON-OSS-PATH = "http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/"
-OSS-PATH =     "http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/"
-
-
-SRC_URI = "${NON-OSS-PATH}${PSB-VIDEO};name=psbrpm;unpack=0 \
-	   ${NON-OSS-PATH}${PVR-BIN};name=pvrrpm;unpack=0 \
-	   ${NON-OSS-PATH}${PVR-BIN-DEV};name=pvrrpmdev;unpack=0 \
-	   ${OSS-PATH}${LIBWSBM};name=wsbmrpm;unpack=0 \
-	   ${OSS-PATH}${LIBWSBM-DEV};name=wsbmrpmdev;unpack=0 \
-		"
-SRC_URI[pvrrpm.md5sum] = "3ae7db98825af642445f75f4b5ddb303"
-SRC_URI[pvrrpm.sha256sum] = "42b97e5d663444f35b1ee51cdf9573e3b1d5a4f49ae854218c5c4c9a66ba95cf"
-
-SRC_URI[pvrrpmdev.md5sum] = "e8f0815b5bbf94311a7cf229451f651f"
-SRC_URI[pvrrpmdev.sha256sum] = "facb67f6b8413504e7ba570a4e3e3ee20cb90d7bd02b303653f9ce5cc4fd7b20"
-
-SRC_URI[psbrpm.md5sum] =  "ec486193dc4b3f91bc7c5e18d9ca9d8a"
-SRC_URI[psbrpm.sha256sum] = "0861d69b44d5ce29a3f778ac82976a22f7726af84d9b2e5438c18da5263ffdac"
-
-SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
-SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
-
-SRC_URI[wsbmrpmdev.md5sum] = "895d0cafd878fcbe4e2f845b8e09eea3"
-SRC_URI[wsbmrpmdev.sha256sum] = "605ba605a2617ee67863d5becac114ce7f4ea440854543f75465e16f463bad70"
-
-
-# make sure generated rpm packages get non conflicting names
-PKG_${PN} = "cdv-pvr-driver"
-PKG_${PN}-dev = "cdv-pvr-driver-dev"
-PKG_${PN}-dbg = "cdv-pvr-driver-dbg"
-PKG_${PN}-doc = "cdv-pvr-driver-doc"
-
-S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
-
-# These are closed binaries generated elsewhere so don't check ldflags
-INSANE_SKIP_${PN} = "ldflags"
-
-# Don't try stripping, as the binaries are already stripped
-INHIBIT_PACKAGE_STRIP = "1"
-
-# .so files in these binaries are not symlinks. Rearange package order
-# so that they go to ${PN} instead of $PN}-dev
-PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN} ${PN}-dev ${PN}-doc ${PN}-locale"
-
-
-FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
-
-FILES_${PN} += "${base_libdir}/firmware"
-FILES_${PN} += "${sysconfdir}/X11/xorg.conf.d"
-
-FILES_${PN} += "${libdir}/lib*.so"
-
-FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
-
-FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
-FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt"
-
-RDEPENDS_${PN} = "xserver-xorg-module-exa"
-
-# Add the ABI dependency at package generation time, as otherwise bitbake will
-# attempt to find a provider for it (and fail) when it does the parse.
-#
-# This version *must* be kept correct.
-python populate_packages_prepend() {
-    pn = d.getVar("PN", True)
-    d.appendVar("RDEPENDS_" + pn, " xorg-abi-video-8")
-}
-
-TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
-INSANE_SKIP_${PN} += "ldflags"
-INSANE_SKIP_${PN}-dbg += "ldflags"
-
-do_configure () {
-
-# Extract  license files from rpms
-rpm2cpio.sh ${WORKDIR}/${PSB-VIDEO} |cpio -ivd ./usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
-rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt
-
-}
-
-do_install() {
-
-	mv ${WORKDIR}/*.rpm  ${S}
-
-	rpm2cpio.sh ${S}/${LIBWSBM} | cpio -id
-
-	install -d -m 0755                                    ${D}${libdir}/dri
-
-	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
-
-	rpm2cpio.sh ${S}/${PSB-VIDEO} | cpio -id
-
-	install -d -m 0755				      ${D}${base_libdir}/firmware
-
-	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
-
-	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
-
-	rpm2cpio.sh  ${S}/${PVR-BIN}  | cpio -id
-
-	install -d -m 0755                                    ${D}${libdir}/pvr/cdv/dri
-
-	install -m 0755 ${S}/usr/lib/pvr/cdv/dri/*            ${D}${libdir}/pvr/cdv/dri
-
-	install -d -m 0755                                    ${D}${sysconfdir}/X11/xorg.conf.d
-	install -m 0755 ${S}/etc/powervr.ini		      ${D}${sysconfdir}/
-	install -m 0755 ${S}/etc/X11/xorg.conf.d/*            ${D}${sysconfdir}/X11/xorg.conf.d/
-	install -m 0755 ${S}/usr/lib/dri/pvr_dri.so    	      ${D}${libdir}/dri/
-	install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/
-
-
-	install -m 0755 ${S}/usr/lib/libegl4ogl.so.${PVR-BIN-REV}   	${D}${libdir}/libegl4ogl.so
-	install -m 0755 ${S}/usr/lib/libEGL.so.${PVR-BIN-REV}  		${D}${libdir}/libEGL.so
-	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV} 	${D}${libdir}/libGLES_CM.so
-	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV}  	${D}${libdir}/libGLESv1_CM.so
-	install -m 0755 ${S}/usr/lib/libGLESv2.so.${PVR-BIN-REV}  	${D}${libdir}/libGLESv2.so
-	install -m 0755 ${S}/usr/lib/libglslcompiler.so.${PVR-BIN-REV} 	${D}${libdir}/libglslcompiler.so
-	install -m 0755 ${S}/usr/lib/libIMGegl.so.${PVR-BIN-REV}  	${D}${libdir}/libIMGegl.so
-	install -m 0755 ${S}/usr/lib/libOpenVG.so.${PVR-BIN-REV} 	${D}${libdir}/libOpenVG.so
-	install -m 0755 ${S}/usr/lib/libOpenVGU.so.${PVR-BIN-REV} 	${D}${libdir}/libOpenVGU.so
-	install -m 0755 ${S}/usr/lib/libpvr2d.so.${PVR-BIN-REV}  	${D}${libdir}/libpvr2d.so
-	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.${PVR-BIN-REV} 	${D}${libdir}/libPVROGL_MESA.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.${PVR-BIN-REV} 	${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.${PVR-BIN-REV} 	${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.${PVR-BIN-REV}  	${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
-	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.${PVR-BIN-REV}	${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
-	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.${PVR-BIN-REV}  	${D}${libdir}/libPVRScopeServices.so
-	install -m 0755 ${S}/usr/lib/libsrv_init.so.${PVR-BIN-REV}  	${D}${libdir}/libsrv_init.so
-	install -m 0755 ${S}/usr/lib/libsrv_um.so.${PVR-BIN-REV} 	${D}${libdir}/libsrv_um.so
-	install -m 0755 ${S}/usr/lib/libusc.so.${PVR-BIN-REV} 		${D}${libdir}/libusc.so
-
-	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           		${D}${libdir}/pvr/cdv/
-
-	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
-	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 	${D}${libdir}/pvr/cdv/xorg/modules/drivers/
-
-	install -d -m 0755                                    		${D}${libdir}/xorg/modules/drivers
-
-	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   		${D}${libdir}/xorg/modules/drivers/
-
-	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}
-	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}
-
-        rpm2cpio.sh  ${S}/${PVR-BIN-DEV}  | cpio -id
-	install -d -m 0644 ${D}${includedir}
-	install -d -m 0644 ${D}${includedir}/GLES
-	install -d -m 0644 ${D}${includedir}/VG
-	install -d -m 0644 ${D}${includedir}/GLES2
-	install -d -m 0644 ${D}${includedir}/KHR
-	install -d -m 0644 ${D}${includedir}/EGL
-
-        install -m 0644 ${S}/${includedir}/GLES/*.h				${D}${includedir}/GLES
-        install -m 0644 ${S}/${includedir}/VG/*.h				${D}${includedir}/VG
-        install -m 0644 ${S}/${includedir}/GLES2/*.h				${D}${includedir}/GLES2
-        install -m 0644 ${S}/${includedir}/KHR/*.h				${D}${includedir}/KHR
-        install -m 0644 ${S}/${includedir}/EGL/*.h				${D}${includedir}/EGL
-
-	rpm2cpio.sh ${S}/${LIBWSBM-DEV} | cpio -id
-	install -d -m 0644 ${D}${includedir}/wsbm
-
-        install -m 0644 ${S}/${includedir}/wsbm/*.h				${D}${includedir}/wsbm
-        install -m 0644 ${S}/${libdir}/libwsbm.so				${D}${libdir}/libwsbm.so
-
-	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
-
-}
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
deleted file mode 100644
index da4fc3c..0000000
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
+++ /dev/null
@@ -1,26 +0,0 @@
-Section "Device"
-    Identifier	"Generic VESA"
-    Driver	"vesa"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Generic VESA"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
-EndSection
-
-Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
-EndSection
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
deleted file mode 100644
index d7c6a59..0000000
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
+++ /dev/null
@@ -1,19 +0,0 @@
-Section "Device"
-        Option     "DRIDisableVSync"    "False"
-        Identifier  "Card0"
-        Driver      "pvr"
-        BusID       "PCI:0:2:0"
-        Option      "SoftEXA"           "Off"
-        Option      "FlipChain"         "On"
-EndSection
-
-Section "ServerLayout"
-        Identifier "default screen"
-        Option  "AIGLX" "on"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
-EndSection
-
diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
deleted file mode 100644
index 72d991c..0000000
--- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
deleted file mode 100644
index 2248c88..0000000
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ /dev/null
@@ -1,18 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_cedartrail = "cedartrail"
-KMACHINE_cedartrail  = "cedartrail"
-
-KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
-KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
-KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
-KERNEL_FEATURES_append_cedartrail += " cfg/efi-ext.scc"
-
-COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
-KMACHINE_cedartrail-nopvr  = "cedartrail"
-KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
-
-
-# Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_cedartrail ?= XXXX
-#SRCREV_meta_pn-linux-yocto-rt_cedartrail ?= XXXX
diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
deleted file mode 100644
index 440cd77..0000000
--- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
-
-SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
-
-COMPATIBLE_MACHINE_cedartrail = "cedartrail"
-KMACHINE_cedartrail  = "cedartrail"
-KBRANCH_cedartrail  = "yocto/standard/cedartrail"
-KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
-KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
-
-COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
-KMACHINE_cedartrail-nopvr  = "cedartrail"
-KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
-KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
-
-SRCREV_machine_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
-SRCREV_pvr_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
-
-SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "${AUTOREV}"
diff --git a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
deleted file mode 100644
index 796cd61..0000000
--- a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
+++ /dev/null
@@ -1,21 +0,0 @@
-SUMMARY = "ogg file format music samples"
-DESCRIPTION = "Installs ogg file format music samples in /home/Music dir"
-
-LICENSE = "CC-BY-3.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
-
-PR = "r0"
-
-SRC_URI = "http://downloads.yoctoproject.org/releases/media/music/ogg-CC-BY-3.0-music-samples-${PV}.tar.bz2 \
-            "
-
-SRC_URI[md5sum] = "dc3dd4adca69996edaffe8828e1ee165"
-SRC_URI[sha256sum] = "86381f8474d5ac2c80f54c951a8c22f67d352daa977341d3dfb4161e39ca3975"
-
-do_install() {
-
-install -d ${D}${base_prefix}/home/music
-install -m 0644  ${WORKDIR}/ogg-CC-BY-3.0-music-samples-${PV}/*/*.ogg ${D}${base_prefix}/home/music
-}
-
-FILES_${PN} += "${base_prefix}/home/music/*.ogg"
diff --git a/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
deleted file mode 100644
index 3b658e0..0000000
--- a/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-SUMMARY = "Big Buck Bunny video OGG sample "
-DESCRIPTION = "Installs Big Buck Bunny Video OGG file samples in /home/video dir "
-
-LICENSE = "CC-BY-3.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
-
-PR = "r0"
-
-SRC_URI = "http://blender-mirror.kino3d.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_stereo.ogg \
-            "
-
-
-SRC_URI[md5sum] = "576424c653da53e31b86c027e55758ae"
-SRC_URI[sha256sum] = "785b09a585be55f81326a3fcef2cdeeb7ebbc33932b6305fd84209928df67f28"
-
-do_install() {
-
-install -d ${D}${base_prefix}/home/Videos
-install -m 0644  ${WORKDIR}/*.ogg ${D}${base_prefix}/home/Videos
-}
-
-FILES_${PN} += "${base_prefix}/home/Videos/*.ogg"
-- 
1.7.9.5


