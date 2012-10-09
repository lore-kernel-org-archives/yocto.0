Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCAAFE00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:46:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 15:46:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="154362494"
Received: from unknown (HELO envy.home) ([10.255.14.86])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2012 15:46:36 -0700
Message-ID: <5074A91E.50407@intel.com>
Date: Tue, 09 Oct 2012 15:45:50 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<8988815a8f0a27083f78e28a4b685a9ec37836df.1349820369.git.nitin.a.kamble@intel.com>
In-Reply-To: <8988815a8f0a27083f78e28a4b685a9ec37836df.1349820369.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/5] fishriver BSP retirement
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
X-List-Received-Date: Tue, 09 Oct 2012 22:46:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/09/2012 03:10 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This commit removes fishriver bsp from meta-intel layer.

Again, the why is important here. People reading this should see that
from our perspective there is are no users of the BSP and it can be
retired in favor of the FRI2. Or something along those lines.

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  MAINTAINERS                                        |    4 -
>  meta-fishriver/COPYING.MIT                         |   17 ---
>  meta-fishriver/README                              |  114 --------------------
>  meta-fishriver/README.sources                      |   17 ---
>  meta-fishriver/conf/layer.conf                     |   12 --
>  meta-fishriver/conf/machine/fishriver.conf         |   17 ---
>  .../formfactor/formfactor/fishriver/machconfig     |    3 -
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 -
>  .../xserver-xf86-config/fishriver/xorg.conf        |   26 -----
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
>  .../linux/linux-yocto-rt_3.0.bbappend              |    8 --
>  .../linux/linux-yocto-rt_3.2.bbappend              |    8 --
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 --
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 --
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 --
>  15 files changed, 0 insertions(+), 255 deletions(-)
>  delete mode 100644 meta-fishriver/COPYING.MIT
>  delete mode 100644 meta-fishriver/README
>  delete mode 100644 meta-fishriver/README.sources
>  delete mode 100644 meta-fishriver/binary/.gitignore
>  delete mode 100644 meta-fishriver/conf/layer.conf
>  delete mode 100644 meta-fishriver/conf/machine/fishriver.conf
>  delete mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
>  delete mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
>  delete mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
>  delete mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5bcf470..3bf0add 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -56,10 +56,6 @@ EMENLOW
>  M:	Tom Zanussi <tom.zanussi@intel.com>
>  F:	meta-emenlow/
>  
> -FISHRIVER
> -M:	Tom Zanussi <tom.zanussi@intel.com>
> -F:	meta-fishriver/
> -
>  FRI2
>  M:	Darren Hart <dvhart@linux.intel.com>
>  F:	meta-fri2/
> diff --git a/meta-fishriver/COPYING.MIT b/meta-fishriver/COPYING.MIT
> deleted file mode 100644
> index fb950dc..0000000
> --- a/meta-fishriver/COPYING.MIT
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Permission is hereby granted, free of charge, to any person obtaining a copy 
> -of this software and associated documentation files (the "Software"), to deal 
> -in the Software without restriction, including without limitation the rights 
> -to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
> -copies of the Software, and to permit persons to whom the Software is 
> -furnished to do so, subject to the following conditions:
> -
> -The above copyright notice and this permission notice shall be included in 
> -all copies or substantial portions of the Software.
> -
> -THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
> -IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
> -FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
> -AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
> -LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
> -OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
> -THE SOFTWARE.
> diff --git a/meta-fishriver/README b/meta-fishriver/README
> deleted file mode 100644
> index 1dd0a4c..0000000
> --- a/meta-fishriver/README
> +++ /dev/null
> @@ -1,114 +0,0 @@
> -This README file contains information on building the meta-fishriver
> -BSP layer, and booting the images contained in the /binary directory.
> -Please see the corresponding sections below for details.
> -
> -
> -Dependencies
> -============
> -
> -This layer depends on:
> -
> -  URI: git://git.openembedded.org/bitbake
> -  branch: master
> -
> -  URI: git://git.openembedded.org/openembedded-core
> -  layers: meta
> -  branch: master
> -
> -  URI: git://git.yoctoproject.org/meta-intel
> -  layers: intel
> -  branch: master
> -
> -
> -Patches
> -=======
> -
> -Please submit any patches against this BSP to the Yocto mailing list
> -(yocto@yoctoproject.org) and cc: the maintainer:
> -
> -Maintainer: Tom Zanussi <tom.zanussi@intel.com>
> -
> -Please see the meta-intel/MAINTAINERS file for more details.
> -
> -
> -Table of Contents
> -=================
> -
> -  I. Building the meta-fishriver BSP layer
> - II. Booting the images in /binary
> -
> -
> -I. Building the meta-fishriver BSP layer
> -========================================
> -
> -In order to build an image with BSP support for a given release, you
> -need to download the corresponding BSP tarball from the 'Board Support
> -Package (BSP) Downloads' page of the Yocto Project website.
> -
> -Having done that, and assuming you extracted the BSP tarball contents
> -at the top-level of your yocto build tree, you can build a fishriver
> -image by adding the location of the meta-fishriver layer to
> -bblayers.conf, along with the meta-intel layer itself (to access
> -common metadata shared between BSPs) e.g.:
> -
> -  yocto/meta-intel \
> -  yocto/meta-intel/meta-fishriver \
> -
> -To enable the fishriver layer, add the fishriver MACHINE to local.conf:
> -
> -  MACHINE ?= "fishriver"
> -
> -You should then be able to build a fishriver image as such:
> -
> -  $ source oe-init-build-env
> -  $ bitbake core-image-sato
> -
> -At the end of a successful build, you should have a live image that
> -you can boot from a USB flash drive (see instructions on how to do
> -that below, in the section 'Booting the images from /binary').
> -
> -As an alternative to downloading the BSP tarball, you can also work
> -directly from the meta-intel git repository.  For each BSP in the
> -'meta-intel' repository, there are multiple branches, one
> -corresponding to each major release starting with 'laverne' (0.90), in
> -addition to the latest code which tracks the current master (note that
> -not all BSPs are present in every release).  Instead of extracting a
> -BSP tarball at the top level of your yocto build tree, you can
> -equivalently check out the appropriate branch from the meta-intel
> -repository at the same location.
> -
> -
> -II. Booting the images in /binary
> -=================================
> -
> -This BSP contains bootable live images, which can be used to directly
> -boot Yocto off of a USB flash drive.
> -
> -Under Linux, insert a USB flash drive.  Assuming the USB flash drive
> -takes device /dev/sdf, use dd to copy the live image to it.  For
> -example:
> -
> -# dd if=core-image-sato-fishriver-20101207053738.hddimg of=/dev/sdf
> -# sync
> -# eject /dev/sdf
> -
> -This should give you a bootable USB flash device.  Insert the device
> -into a bootable USB socket on the target, and power on.  This should
> -result in a system booted to the Sato graphical desktop.
> -
> -If you want a terminal, use the arrows at the top of the UI to move to
> -different pages of available applications, one of which is named
> -'Terminal'.  Clicking that should give you a root terminal.
> -
> -If you want to ssh into the system, you can use the root terminal to
> -ifconfig the IP address and use that to ssh in.  The root password is
> -empty, so to log in type 'root' for the user name and hit 'Enter' at
> -the Password prompt: and you should be in.
> -
> -----
> -
> -If you find you're getting corrupt images on the USB (it doesn't show
> -the syslinux boot: prompt, or the boot: prompt contains strange
> -characters), try doing this first:
> -
> -# dd if=/dev/zero of=/dev/sdf bs=1M count=512
> diff --git a/meta-fishriver/README.sources b/meta-fishriver/README.sources
> deleted file mode 100644
> index 76180f1..0000000
> --- a/meta-fishriver/README.sources
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -The sources for the packages comprising the images shipped with this
> -BSP can be found at the following location:
> -
> -http://downloads.yoctoproject.org/mirror/sources/
> -
> -The metadata used to generate the images shipped with this BSP, in
> -addition to the code contained in this BSP, can be found at the
> -following location:
> -
> -http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
> -
> -The metadata used to generate the images shipped with this BSP, in
> -addition to the code contained in this BSP, can also be found at the
> -following locations:
> -
> -git://git.yoctoproject.org/poky.git
> -git://git.yoctoproject.org/meta-intel
> diff --git a/meta-fishriver/binary/.gitignore b/meta-fishriver/binary/.gitignore
> deleted file mode 100644
> index e69de29..0000000
> diff --git a/meta-fishriver/conf/layer.conf b/meta-fishriver/conf/layer.conf
> deleted file mode 100644
> index 61e292b..0000000
> --- a/meta-fishriver/conf/layer.conf
> +++ /dev/null
> @@ -1,12 +0,0 @@
> -# We have a conf and classes directory, add to BBPATH
> -BBPATH := "${BBPATH}:${LAYERDIR}"
> -
> -# We have a recipes directory, add to BBFILES
> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
> -	${LAYERDIR}/recipes-*/*/*.bbappend"
> -
> -BBFILE_COLLECTIONS += "fishriver"
> -BBFILE_PATTERN_fishriver := "^${LAYERDIR}/"
> -BBFILE_PRIORITY_fishriver = "6"
> -
> -LAYERDEPENDS_fishriver = "intel"
> diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
> deleted file mode 100644
> index ec2e87f..0000000
> --- a/meta-fishriver/conf/machine/fishriver.conf
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -#@TYPE: Machine
> -#@NAME: fishriver
> -
> -#@DESCRIPTION: Machine configuration for Fish River Island systems
> -# i.e. Z530/E660 + EG20T
> -
> -PREFERRED_VERSION_linux-yocto ?= "3.4%"
> -
> -require conf/machine/include/tune-atom.inc
> -require conf/machine/include/ia32-base.inc
> -
> -XSERVER ?= "${XSERVER_IA32_BASE} \
> -           ${XSERVER_IA32_EXT} \
> -           ${XSERVER_IA32_VESA} \
> -           "
> -
> -APPEND += "video=vesafb vga=0x318"
> diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig b/meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
> deleted file mode 100644
> index ffce012..0000000
> --- a/meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -# Assume a USB mouse and keyboard are connected
> -HAVE_TOUCHSCREEN=0
> -HAVE_KEYBOARD=1
> diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> deleted file mode 100644
> index 54da0ff..0000000
> --- a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> - 
> -PRINC = "1"
> diff --git a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
> deleted file mode 100644
> index da4fc3c..0000000
> --- a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -Section "Device"
> -    Identifier	"Generic VESA"
> -    Driver	"vesa"
> -EndSection
> -
> -Section "Monitor"
> -    Identifier    "Generic Monitor"
> -    Option        "DPMS"
> -EndSection
> -
> -Section "Screen"
> -    Identifier    "Default Screen"
> -    Device	  "Generic VESA"
> -    Monitor       "Generic Monitor"
> -    DefaultDepth  24
> -EndSection
> -
> -Section "ServerLayout"
> -    Identifier     "Default Layout"
> -    Screen         "Default Screen"
> -EndSection
> -
> -Section "ServerFlags"
> -    Option        "DontZap"  "0"
> -    Option        "AutoAddDevices"  "False"
> -EndSection
> diff --git a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> deleted file mode 100644
> index 72d991c..0000000
> --- a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ /dev/null
> @@ -1 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> deleted file mode 100644
> index 7a502bd..0000000
> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -COMPATIBLE_MACHINE_fishriver = "fishriver"
> -KMACHINE_fishriver  = "fishriver"
> -
> -# Update the following to use a different BSP branch or meta SRCREV
> -#KBRANCH_fishriver  = "yocto/standard/preempt-rt/base"
> -#SRCREV_machine_pn-linux-yocto-rt_fishriver ?= XXXX
> -#SRCREV_meta_pn-linux-yocto-rt_fishriver ?= XXXX
> diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> deleted file mode 100644
> index a91a425..0000000
> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -COMPATIBLE_MACHINE_fishriver = "fishriver"
> -KMACHINE_fishriver  = "fishriver"
> -
> -# Update the following to use a different BSP branch or meta SRCREV
> -#KBRANCH_fishriver  = "standard/preempt-rt/base"
> -#SRCREV_machine_pn-linux-yocto-rt_fishriver ?= XXXX
> -#SRCREV_meta_pn-linux-yocto-rt_fishriver ?= XXXX
> diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
> deleted file mode 100644
> index 6ac6ef5..0000000
> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -COMPATIBLE_MACHINE_fishriver = "fishriver"
> -KMACHINE_fishriver  = "fishriver"
> -KBRANCH_fishriver  = "yocto/standard/fishriver"
> -KERNEL_FEATURES_append_fishriver += " cfg/smp.scc"
> -
> -SRCREV_machine_pn-linux-yocto_fishriver ?= "c139592c96722727a9f074515a4061c3820da1a6"
> -SRCREV_meta_pn-linux-yocto_fishriver ?= "59314a3523e360796419d76d78c6f7d8c5ef2593"
> diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> deleted file mode 100644
> index 9a2f678..0000000
> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -COMPATIBLE_MACHINE_fishriver = "fishriver"
> -KMACHINE_fishriver  = "fishriver"
> -KBRANCH_fishriver  = "standard/default/fishriver"
> -
> -SRCREV_machine_pn-linux-yocto_fishriver ?= "969edd015a46eed77d6c3daeffdc299dd06e3397"
> -SRCREV_meta_pn-linux-yocto_fishriver ?= "5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
> diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> deleted file mode 100644
> index c0d04dc..0000000
> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -COMPATIBLE_MACHINE_fishriver = "fishriver"
> -KMACHINE_fishriver  = "fishriver"
> -KBRANCH_fishriver  = "standard/fishriver"
> -
> -SRCREV_machine_pn-linux-yocto_fishriver ?= "3fa06aa29078fdb2af431de2d3fdae7d281ba85f"
> -SRCREV_meta_pn-linux-yocto_fishriver ?= "5bdc655034a58a7147176a8a882d81e2fd51e4b9"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

