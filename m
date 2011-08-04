Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94A6BE004B2
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 00:40:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Aug 2011 23:18:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,315,1309762800"; 
   d="scan'208";a="4015596"
Received: from unknown (HELO [10.255.14.93]) ([10.255.14.93])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Aug 2011 23:18:31 -0700
Message-ID: <4E3A39B6.4090801@linux.intel.com>
Date: Wed, 03 Aug 2011 23:18:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1312343514.git.tom.zanussi@intel.com>
	<3ef6aeff555624d7be783d11fe030e5e84de8b3c.1312343514.git.tom.zanussi@intel.com>
In-Reply-To: <3ef6aeff555624d7be783d11fe030e5e84de8b3c.1312343514.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] meta-fri2: new layer for Fish River Island II	(E6XX/EG20T) systems
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
X-List-Received-Date: Thu, 04 Aug 2011 07:40:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Tom,

A few thoughts below. These are all things I can pick up once I return
as well if there is some urgency to get these in tree.

--
Darren

On 08/02/2011 09:05 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This layer provides support for E6XX + EG20T Intel systems.
> 
> Currently it supports only vesa graphics, which will be upgraded
> shortly.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-fri2/COPYING.MIT                              |   17 ++++
>  meta-fri2/README                                   |   83 ++++++++++++++++++++
>  meta-fri2/README.sources                           |   17 ++++
>  meta-fri2/conf/layer.conf                          |   10 +++
>  meta-fri2/conf/machine/fri2.conf                   |   36 +++++++++
>  .../formfactor/formfactor/fri2/machconfig          |    3 +
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
>  .../xserver-xf86-config/fri2/xorg.conf             |   26 ++++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 ++
>  11 files changed, 206 insertions(+), 0 deletions(-)
>  create mode 100644 meta-fri2/COPYING.MIT
>  create mode 100644 meta-fri2/README
>  create mode 100644 meta-fri2/README.sources
>  create mode 100644 meta-fri2/binary/.gitignore
>  create mode 100644 meta-fri2/conf/layer.conf
>  create mode 100644 meta-fri2/conf/machine/fri2.conf
>  create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor/fri2/machconfig
>  create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
>  create mode 100644 meta-fri2/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
>  create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
> 
> diff --git a/meta-fri2/COPYING.MIT b/meta-fri2/COPYING.MIT
> new file mode 100644
> index 0000000..fb950dc
> --- /dev/null
> +++ b/meta-fri2/COPYING.MIT
> @@ -0,0 +1,17 @@
> +Permission is hereby granted, free of charge, to any person obtaining a copy 
> +of this software and associated documentation files (the "Software"), to deal 
> +in the Software without restriction, including without limitation the rights 
> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
> +copies of the Software, and to permit persons to whom the Software is 
> +furnished to do so, subject to the following conditions:
> +
> +The above copyright notice and this permission notice shall be included in 
> +all copies or substantial portions of the Software.
> +
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
> +THE SOFTWARE.
> diff --git a/meta-fri2/README b/meta-fri2/README
> new file mode 100644
> index 0000000..7957a7f
> --- /dev/null
> +++ b/meta-fri2/README
> @@ -0,0 +1,83 @@
> +This README file contains information on building the meta-fri2 BSP
> +layer, and booting the images contained in the /binary directory.
> +Please see the corresponding sections below for details.
> +
> +
> +Table of Contents
> +=================
> +
> +  I. Special notes on the meta-fri2 BSP layer
> + II. Building the meta-fri2 BSP layer
> +III. Booting the images in /binary
> +
> +
> +II. Building the meta-fri2 BSP layer
> +=========================================
> +
> +In order to build an image with BSP support for a given release, you
> +need to download the corresponding BSP tarball from the 'Board Support
> +Package (BSP) Downloads' page of the Yocto Project website.
> +
> +Having done that, and assuming you extracted the BSP tarball contents
> +at the top-level of your yocto build tree, you can build a fri2 image
> +by adding the location of the meta-fri2 layer to bblayers.conf e.g.:
> +
> +  yocto/meta-intel/meta-fri2 \
> +
> +To enable the fri2 layer, add the fri2 MACHINE to local.conf:
> +
> +  MACHINE ?= "fri2"
> +
> +You should then be able to build a fri2 image as such:
> +
> +  $ source poky-init-build-env
> +  $ bitbake poky-image-sato-live


These should be corrected with their oe- and core- equivalents.

Also, I presume the FSTYPE should include -live by default now as the
other BSPs have been recently updated to do?

> +
> +At the end of a successful build, you should have a live image that
> +you can boot from a USB flash drive (see instructions on how to do
> +that below, in the section 'Booting the images from /binary').
> +
> +As an alternative to downloading the BSP tarball, you can also work
> +directly from the meta-intel git repository.  For each BSP in the
> +'meta-intel' repository, there are multiple branches, one
> +corresponding to each major release starting with 'laverne' (0.90), in
> +addition to the latest code which tracks the current master.  Instead
> +of extracting a BSP tarball at the top level of your yocto build tree,
> +you can equivalently check out the appropriate branch from the
> +meta-intel repository at the same location.


Does it make sense to have this information here? Especially since
laverne won't ever work for the fri2 as it's support starts with Linux
3.0? It's boiler plate I guess and we want the fri2 BSP to be self
contained so it can be downloaded independently... but hrm... I'm
thinking on this one...


> +
> +
> +III. Booting the images in /binary
> +==================================
> +
> +This BSP contains bootable live images, which can be used to directly
> +boot Yocto off of a USB flash drive.
> +
> +Under Linux, insert a USB flash drive.  Assuming the USB flash drive
> +takes device /dev/sdf, use dd to copy the live image to it.  For
> +example:
> +
> +# dd if=poky-image-sato-live-fri2-20101207053738.hddimg of=/dev/sdf
> +# sync
> +# eject /dev/sdf
> +

core-image-...

> +This should give you a bootable USB flash device.  Insert the device
> +into a bootable USB socket on the target, and power on.  This should
> +result in a system booted to the Sato graphical desktop.
> +


All this should be consolodated into a single place documenting the use
of live images as well as common x86 boot preparation.


> +If you want a terminal, use the arrows at the top of the UI to move to
> +different pages of available applications, one of which is named
> +'Terminal'.  Clicking that should give you a root terminal.
> +
> +If you want to ssh into the system, you can use the root terminal to
> +ifconfig the IP address and use that to ssh in.  The root password is
> +empty, so to log in type 'root' for the user name and hit 'Enter' at
> +the Password prompt: and you should be in.
> +
> +----
> +
> +If you find you're getting corrupt images on the USB (it doesn't show
> +the syslinux boot: prompt, or the boot: prompt contains strange
> +characters), try doing this first:
> +
> +# dd if=/dev/zero of=/dev/sdf bs=1M count=512


There is also the buggy bios requiring the usbzip format that is
documented in the poky README.hardware (another argument for consolidation).


> diff --git a/meta-fri2/README.sources b/meta-fri2/README.sources
> new file mode 100644
> index 0000000..5c8b5c7
> --- /dev/null
> +++ b/meta-fri2/README.sources
> @@ -0,0 +1,17 @@
> +The sources for the packages comprising the images shipped with this
> +BSP can be found at the following location:
> +
> +http://autobuilder.yoctoproject.org/sources/
> +
> +The metadata used to generate the images shipped with this BSP, in
> +addition to the code contained in this BSP, can be found at the
> +following location:
> +
> +http://autobuilder.yoctoproject.org/downloads/yocto-1.0/poky-bernard-5.0.tar.bz2
> +
> +The metadata used to generate the images shipped with this BSP, in
> +addition to the code contained in this BSP, can also be found at the
> +following locations:
> +
> +git://git.yoctoproject.org/poky.git
> +git://git.yoctoproject.org/meta-intel
> diff --git a/meta-fri2/binary/.gitignore b/meta-fri2/binary/.gitignore
> new file mode 100644
> index 0000000..e69de29
> diff --git a/meta-fri2/conf/layer.conf b/meta-fri2/conf/layer.conf
> new file mode 100644
> index 0000000..b30e776
> --- /dev/null
> +++ b/meta-fri2/conf/layer.conf
> @@ -0,0 +1,10 @@
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH := "${BBPATH}:${LAYERDIR}"
> +
> +# We have a recipes directory, add to BBFILES
> +BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
> +	${LAYERDIR}/recipes-*/*/*.bbappend"


Will this have similar init-....sh script selection issues that you
fixed for cownbay and grub?


> +
> +BBFILE_COLLECTIONS += "fri2"
> +BBFILE_PATTERN_fri2 := "^${LAYERDIR}/"
> +BBFILE_PRIORITY_fri2 = "6"
> diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
> new file mode 100644
> index 0000000..61b102d
> --- /dev/null
> +++ b/meta-fri2/conf/machine/fri2.conf
> @@ -0,0 +1,36 @@
> +#@TYPE: Machine
> +#@NAME: fri2
> +
> +#@DESCRIPTION: Machine configuration for Fish River Island II systems
> +# i.e. E660 + EG20T
> +
> +include conf/machine/include/tune-atom.inc
> +
> +MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> +                    acpi serial usbgadget"
> +
> +KERNEL_IMAGETYPE = "bzImage"
> +
> +PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
> +PREFERRED_VERSION_linux-yocto = "3.0+git%"
> +
> +PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
> +PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
> +PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> +PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
> +PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
> +XSERVER ?= "xserver-xf86-dri-lite \
> +           xf86-input-mouse \
> +           xf86-input-keyboard \
> +           xf86-input-evdev \
> +           xf86-input-synaptics \
> +           xf86-video-vesa"
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +
> +MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
> +
> +IMAGE_FSTYPES ?= "ext3 cpio.gz live"


Ah, it's here, so we just don't need the -live in the image names used
above.


> +
> +GLIBC_ADDONS = "nptl"
> +GLIBC_EXTRA_OECONF = "--with-tls"
> diff --git a/meta-fri2/recipes-bsp/formfactor/formfactor/fri2/machconfig b/meta-fri2/recipes-bsp/formfactor/formfactor/fri2/machconfig
> new file mode 100644
> index 0000000..ffce012
> --- /dev/null
> +++ b/meta-fri2/recipes-bsp/formfactor/formfactor/fri2/machconfig
> @@ -0,0 +1,3 @@
> +# Assume a USB mouse and keyboard are connected
> +HAVE_TOUCHSCREEN=0
> +HAVE_KEYBOARD=1
> diff --git a/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
> new file mode 100644
> index 0000000..54da0ff
> --- /dev/null
> +++ b/meta-fri2/recipes-bsp/formfactor/formfactor_0.0.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> + 
> +PRINC = "1"
> diff --git a/meta-fri2/recipes-core/tasks/task-core-tools.bbappend b/meta-fri2/recipes-core/tasks/task-core-tools.bbappend
> new file mode 100644
> index 0000000..5accb2e
> --- /dev/null
> +++ b/meta-fri2/recipes-core/tasks/task-core-tools.bbappend
> @@ -0,0 +1,2 @@
> +RRECOMMENDS_task-core-tools-profile_append_fri2 = " systemtap"
> +
> diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
> new file mode 100644
> index 0000000..da4fc3c
> --- /dev/null
> +++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2/xorg.conf
> @@ -0,0 +1,26 @@
> +Section "Device"
> +    Identifier	"Generic VESA"
> +    Driver	"vesa"
> +EndSection
> +
> +Section "Monitor"
> +    Identifier    "Generic Monitor"
> +    Option        "DPMS"
> +EndSection
> +
> +Section "Screen"
> +    Identifier    "Default Screen"
> +    Device	  "Generic VESA"
> +    Monitor       "Generic Monitor"
> +    DefaultDepth  24
> +EndSection
> +
> +Section "ServerLayout"
> +    Identifier     "Default Layout"
> +    Screen         "Default Screen"
> +EndSection
> +
> +Section "ServerFlags"
> +    Option        "DontZap"  "0"
> +    Option        "AutoAddDevices"  "False"
> +EndSection
> diff --git a/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> new file mode 100644
> index 0000000..4b8d0e6
> --- /dev/null
> +++ b/meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -0,0 +1,3 @@
> +THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> +FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> +
> diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
> new file mode 100644
> index 0000000..e280488
> --- /dev/null
> +++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE_fri2 = "fri2"
> +KMACHINE_fri2  = "yocto/standard/fri2"
> +
> +SRCREV_machine_pn-linux-yocto_fri2 ?= "5e08aa8dd62d9035498227de16b9148ab89e17c5"
> +SRCREV_meta_pn-linux-yocto_fri2 ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

