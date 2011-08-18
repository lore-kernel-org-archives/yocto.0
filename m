Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7141E006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 11:12:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Aug 2011 11:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,246,1312182000"; d="scan'208";a="42765315"
Received: from unknown (HELO [10.255.15.10]) ([10.255.15.10])
	by fmsmga001.fm.intel.com with ESMTP; 18 Aug 2011 11:12:37 -0700
Message-ID: <4E4D560F.9080900@linux.intel.com>
Date: Thu, 18 Aug 2011 11:12:31 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <9391ba93d0385e0768062df5c4c087d9673a827b.1313598804.git.tom.zanussi@intel.com>
	<d2029009d899475336f96e23e0708e16a56dabd7.1313598804.git.tom.zanussi@intel.com>
In-Reply-To: <d2029009d899475336f96e23e0708e16a56dabd7.1313598804.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 06/12] meta-crownbay: update README
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
X-List-Received-Date: Thu, 18 Aug 2011 18:12:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 08/17/2011 09:51 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> With the new emgd-driver-bin recipe, the extensive instructions on how
> to manually download and set up EMGD for the build are no longer
> necessary.  Those instructions have been replaced with the simpler set
> of instructions now needed to build crownbay with EMGD.
>
> Changes to reflect the new image names and a couple other minor
> cleanups are also included.
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta-crownbay/README |  207 ++++++++++----------------------------------------
>   1 files changed, 42 insertions(+), 165 deletions(-)
>
> diff --git a/meta-crownbay/README b/meta-crownbay/README
> index 89056ed..c82f2c4 100644
> --- a/meta-crownbay/README
> +++ b/meta-crownbay/README
> @@ -6,7 +6,7 @@ The Crown Bay platform consists of the Intel Atom Z6xx processor,
>   plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
>
>   It also supports the E6xx embedded on-chip graphics via the Intel
> -Embedded Media and Graphics Driver (EMGD) 1.6 Gold Driver.
> +Embedded Media and Graphics Driver (EMGD) 1.8 Driver.
>
>   Table of Contents
>   =================
> @@ -33,14 +33,20 @@ bblayers.conf e.g.:
>   The meta-crownbay layer contains support for two different machine
>   configurations. These configurations are identical except for the fact
>   that the one prefixed with 'crownbay' makes use of the
> -Intel-proprietary EMGD 1.6 graphics driver, while the one prefixed
> +Intel-proprietary EMGD 1.8 graphics driver, while the one prefixed
>   with 'crownbay-noemgd' does not.
>
> -If you want to enable the layer that supports EMGD graphics add
> +If you want to enable the layer that supports EMGD graphics add the
>   following to the local.conf file:
>
>     MACHINE ?= "crownbay"
>
> +You also need to add the line:
> +
> +  COMMERCIAL_LICENSE = ""
> +
Tom,

I thought we talked about using the oe_filter mechanism here instead of 
a flat override, since this will bring in other COMMERCIAL_LICENSED content.

Sau!

> +to the local.conf file.
> +
>   If you want to enable the layer that does not support EMGD graphics
>   add the following to the local.conf file:
>
> @@ -48,8 +54,8 @@ add the following to the local.conf file:
>
>   You should then be able to build a crownbay image as such:
>
> -  $ source poky-init-build-env
> -  $ bitbake poky-image-sato-live
> +  $ source oe-init-build-env
> +  $ bitbake core-image-sato
>
>   At the end of a successful build, you should have a live image that
>   you can boot from a USB flash drive (see instructions on how to do
> @@ -59,10 +65,11 @@ As an alternative to downloading the BSP tarball, you can also work
>   directly from the meta-intel git repository.  For each BSP in the
>   'meta-intel' repository, there are multiple branches, one
>   corresponding to each major release starting with 'laverne' (0.90), in
> -addition to the latest code which tracks the current master.  Instead
> -of extracting a BSP tarball at the top level of your yocto build tree,
> -you can equivalently check out the appropriate branch from the
> -meta-intel repository at the same location.
> +addition to the latest code which tracks the current master (note that
> +not all BSPs are present in every release).  Instead of extracting
> +a BSP tarball at the top level of your yocto build tree, you can
> +equivalently check out the appropriate branch from the meta-intel
> +repository at the same location.
>
>
>   II. Special notes for building the meta-crownbay BSP layer
> @@ -70,182 +77,52 @@ II. Special notes for building the meta-crownbay BSP layer
>
>   The meta-crownbay layer makes use of the proprietary Intel EMGD
>   userspace drivers when building the "crownbay" machine (but not when
> -building the "crownbay-noemgd" machine).  If you got the BSP from the
> -'BSP Downloads' section of the Yocto website, the EMGD binaries needed
> -to perform the build will already be present in the BSP, located in
> -the recipes-graphics/xorg-xserver/emgd-driver-bin-1.6 directory, and
> -you can ignore the rest of this section.
> +building the "crownbay-noemgd" machine).
>
> -If you didn't get the BSP from the 'BSP Downloads' section of the
> -Yocto website, you have two choices:
> +As mentioned in Section I, you need to add the line:
>
> -- You can download a tarball containing an rpm that contains the
> -  binaries and extract the binaries from that, and copy them to the
> -  proper location in the meta-crownbay layer.
> +  COMMERCIAL_LICENSE = ""
>
> -- You can download a Windows executable from the official EMGD
> -  website, extract the binaries from it, and copy them to the proper
> -  location in the meta-crownbay layer.
> +to the local.conf file in order for the build to succeed.
>
> -The following subsections describe each option in detail.
> +The crownbay BSP COMMERCIAL_LICENSE default setting causes the build
> +to fail in order to prevent users from inadvertently creating and
> +possibly distributing images containing packages with non-free
> +licenses.  Clearing the COMMERCIAL_LICENSE variable as shown above
> +essentially tells the build system that you're OK with the fact that
> +packages with non-free licenses such as EMGD will be installed in the
> +image.
>
> +Once you've done a build, you can examine the EMGD license(s) in the
> +IEMGD_HEAD_Linux/License directory of the emgd-driver-bin work
> +directory of the build.
>
> -IIa Downloading and extracting the binaries using the EMGD Linux tarball
> -------------------------------------------------------------------------
> +Alternatively, you can examine the licenses before building by
> +downloading the EMGD 1.8 Driver and looking at the licenses in the
> +downloaded tarball.
>
> -The first step of the process is to download the EMGD 1.6 Gold Driver.
> -Here is the current link to the URL which it can be downloaded from:
> +Here is the current link to the URL from which it can be downloaded:
>
>   http://edc.intel.com/Software/Downloads/EMGD/
>
>   In the Download Now tab, select:
>
>   Intel® architecture-based product: Linux Tar Ball
> -Operating System: MeeGo 1.0 IVI Linux (kernel 2.6.33.3, X.server 1.8.0)
> +Operating System: MeeGo* 1.2 IVI Linux* (kernel 2.6.37, X.server 1.9, Mesa 7.9)
>
> -That will give you a large tar file:
> +That will give you a large .tgz file:
>
> -Lin_EMGD_1_6_RC_1922.tar
> +Lin_EMGD_1_8_RC_2032.tgz
>
>   Extract the files in the tar file, which will in turn give you a
>   directory named IEMGD_HEAD_Linux.
>
> -The binaries are contained in an rpm file; you can extract the
> -binaries from the rpm file using rpm2cpio and cpio:
> -
> -$ cd IEMGD_HEAD_Linux/MeeGo1.2
> -$ rpm2cpio emgd-bin-1922-1.6.i586.rpm>  emgd-bin-1922-1.6.i586.cpio
> -$ mkdir extracted; cd extracted
> -$ cpio -idv<  ../poky-image-minimal-initramfs-emenlow.cpio
> -
> -Finally, you can copy the xorg-xserver binaries to the
> -emgd-driver-bin-1.6 directory in the meta-crownbay layer:
> -
> -$ cp -a usr/lib meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6
> -
> -You also need to copy the IEMGD License.txt file to the same directory:
> -
> -$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xserver/emgd-driver-bin-1.6
> -
> -At this point, you should be able to build meta-crownbay images as usual.
> -
> -
> -IIb Extracting the binaries using the graphical ced application
> ----------------------------------------------------------------
> -
> -These steps require that you run a graphical application in Windows.
> -Windows 7 was used for these instructions, but it shouldn't matter
> -which version of Windows you use.
> -
> -The first step of the process is to download the EMGD 1.6 Gold Driver.
> -Here is the current link to the URL which it can be downloaded from:
> -
> -http://edc.intel.com/Software/Downloads/EMGD/
> -
> -In the Download Now tab, select:
> -
> -Intel® architecture-based product: Intel Atom Processor E6XX Series
> -Operating System: MeeGo 1.0 IVI Linux (kernel 2.6.33.3, X.server 1.8.0)
> -
> -That will give you a large zip file:
> -
> -IEMGD_1_6_GOLD_1922.zip
> -
> -Extract the files in the zip file, which will in turn give you a large
> -.exe file:
> -
> -IEMGD_1_6_GOLD_ALL_1922.exe
> -
> -Run IEMGD_1_6_GOLD_ALL_1922.exe to install, accept licenses, etc.
> -
> -If it says to install watcom, follow the instructions to do that.
> -
> -When the installation completes, an application named "emgd-ced" will
> -be present in the install directory.  Double-click to run it.
> -
> -Select the menu item: New Configuration
> -
> -In the tabbed page, make the following selections and/or enter the
> -specified data:
> -
> -Configuration File Name: myconfig
> -Platform Chipset: Intel Atom Processor E6xx
> -Port Devices: LVDS, sDVO
> -
> -Hit the 'Next' button.
> +The applicable Licenses are contained in the License directory under
> +IEMGD_HEAD_Linux.
>
> -On the next tabbed page, make the following selections and/or enter
> -the specified data:
>
> -Readable Port Name: portname0
> -Encoder Configuration: Select sDVO Device: Internal LVDS
> -
> -Hit the 'Finish' button.
> -
> -Select the menu item: New Package
> -
> -In the tabbed page, make the following selections and/or enter the
> -specified data:
> -
> -Package File Name: mypackage
> -Configurations: selec myconfig.cnfg
> -Target OS: Linux operating System
> -
> -Hit the 'Finish' button.
> -
> -Select the menu item: Generate Installation
> -
> -This will create the EMGD installation package:
> -
> -Generating EMGD installation...
> -
> -The installation package should now be under the 'workspace'
> -subdirectory of the directory you installed to:
> -
> -workspace/installation/mypackage.pkg_installation/IEMGD_HEAD_Linux/IEMGD_HEAD_Linux.tgz
> -
> -This is the file you are interested in.  Copy it to your Poky build
> -system, and uncompress/untar it:
> -
> -$ tar cvfz IEMGD_HEAD_Linux.tgz
> -
> -The binaries are contained in an rpm file; you can extract the
> -binaries from the rpm file using rpm2cpio and cpio:
> -
> -$ cd IEMGD_HEAD_Linux/MeeGo1.2
> -$ rpm2cpio emgd-bin-1922-1.6.i586.rpm>  emgd-bin-1922-1.6.i586.cpio
> -$ mkdir extracted; cd extracted
> -$ cpio -idv<  ../poky-image-minimal-initramfs-emenlow.cpio
> -
> -Finally, you can copy the xorg-xserver binaries to the
> -emgd-driver-bin-1.6 directory in the meta-crownbay layer:
> -
> -$ cp -a usr/lib meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6
> -
> -You also need to copy the IEMGD License.txt file to the same directory:
> -
> -$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xserver/emgd-driver-bin-1.6
> -
> -At this point, you should be able to build meta-crownbay images as usual.
> -
> -----
> -
> -For reference, the EMGD Driver documentation is also available at the
> -above link.
> -
> -The specific text of the document is:
> -
> -User Guide: Intel® Embedded Media and Graphics Driver, EFI Video
> -Driver, EPOG, and Video BIOS v1.6 for Windows* XP and Linux* Provides
> -installation requirements/procedures&  describes the vbios/firmware,
> -configuration options,&  functionality of Intel® EMGD under Windows*&
> -Linux*. Refer to guide for details.
> -
> -April 2011
> -
> -
> -II. Booting the images in /binary
> -=================================
> +III. Booting the images in /binary
> +==================================
>
>   This BSP contains bootable live images, which can be used to directly
>   boot Yocto off of a USB flash drive.
> @@ -254,7 +131,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
>   takes device /dev/sdf, use dd to copy the live image to it.  For
>   example:
>
> -# dd if=poky-image-sato-live-crownbay-20101207053738.hddimg of=/dev/sdf
> +# dd if=core-image-sato-crownbay-20101207053738.hddimg of=/dev/sdf
>   # sync
>   # eject /dev/sdf
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

