Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F2D2E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 16:38:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jan 2012 16:38:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110441149"
Received: from unknown (HELO envy.home) ([10.255.14.109])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2012 16:38:57 -0800
Message-ID: <4F1F4F08.9050301@linux.intel.com>
Date: Tue, 24 Jan 2012 16:38:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
	<907681ba1edf36781f328ca2fba352a9fd9e85e6.1327449325.git.tom.zanussi@intel.com>
In-Reply-To: <907681ba1edf36781f328ca2fba352a9fd9e85e6.1327449325.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 6/6] meta-fri2: update README
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
X-List-Received-Date: Wed, 25 Jan 2012 00:38:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 01/24/2012 04:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The new emgd-driver-bin_1.10 recipe no longer requires manually
> extracting and installing emgd binaries, so remove the section that
> deals with that.
> 
> It does require a new LICENSE_FLAGS_WHITELIST entry in local.conf, so
> add instructions detailing that.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-fri2/README |   86 +++++++----------------------------------------------
>  1 files changed, 12 insertions(+), 74 deletions(-)
> 
> diff --git a/meta-fri2/README b/meta-fri2/README
> index 2f8a5a4..df2fa87 100644
> --- a/meta-fri2/README
> +++ b/meta-fri2/README
> @@ -8,7 +8,7 @@ processor, plus the Intel EG20T Platform Controller Hub (Tunnel Creek
>  and various other machine-to-machine (m2m) capabilities.
>  
>  It also supports the E6xx embedded on-chip graphics via the Intel
> -Embedded Media and Graphics Driver (EMGD) 1.8 Driver.
> +Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
>  
>  
>  Dependencies
> @@ -43,8 +43,7 @@ Table of Contents
>  =================
>  
>    I. Building the meta-fri2 BSP layer
> - II. Special notes for building the meta-fri2 BSP layer
> -III. Booting the images in /binary
> + II. Booting the images in /binary
>  
>  
>  I. Building the meta-fri2 BSP layer
> @@ -66,7 +65,7 @@ between BSPs) e.g.:
>  The meta-fri2 layer contains support for two different machine
>  configurations. These configurations are identical except for the fact
>  that the one prefixed with 'fri2' makes use of the Intel-proprietary
> -EMGD 1.8 graphics driver, while the one prefixed with 'fri2-noemgd'
> +EMGD 1.10 graphics driver, while the one prefixed with 'fri2-noemgd'
>  does not.
>  
>  If you want to enable the layer that supports EMGD graphics add the
> @@ -74,6 +73,13 @@ following to the local.conf file:
>  
>    MACHINE ?= "fri2"
>  
> +The 'fri2' machine includes the emgd-driver-bin package, which has a
> +proprietary license that must be whitelisted by adding the string
> +"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
> +in your local.conf.  For example:
> +
> +  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
> +
>  If you want to enable the layer that does not support EMGD graphics
>  add the following to the local.conf file:
>  
> @@ -99,76 +105,8 @@ equivalently check out the appropriate branch from the meta-intel
>  repository at the same location.
>  
>  
> -II. Special notes for building the meta-fri2 BSP layer
> -======================================================
> -
> -The meta-fri2 layer makes use of the proprietary Intel EMGD userspace
> -drivers when building the "fri2" machine (but not when building the
> -"fri2-noemgd" machine).  If you got the BSP from the 'BSP Downloads'
> -section of the Yocto website, the EMGD binaries needed to perform the
> -build will already be present in the BSP, located in the
> -meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
> -directory, and you can ignore the rest of this section.
> -
> -If you didn't get the BSP from the 'BSP Downloads' section of the
> -Yocto website, you can download a tarball containing an rpm that
> -contains the binaries and extract the binaries from that, and copy
> -them to the proper location in the meta-fri2 layer.
> -
> -The following subsection describes that process in detail.
> -
> -
> -Downloading and extracting the binaries using the EMGD Linux tarball
> ---------------------------------------------------------------------
> -
> -The first step of the process is to download the EMGD 1.8 Driver.
> -Here is the current link to the URL from which it can be downloaded:
> -
> -http://edc.intel.com/Software/Downloads/EMGD/
> -
> -In the Download Now tab, select:
> -
> -Intel® architecture-based product: Linux Tar Ball
> -Operating System: MeeGo* 1.2 IVI Linux* (kernel 2.6.37, X.server 1.9, Mesa 7.9)
> -
> -That will give you a large .tgz file:
> -
> -Lin_EMGD_1_8_RC_2032.tgz
> -
> -Extract the files in the tar file, which will in turn give you a
> -directory named IEMGD_HEAD_Linux.
> -
> -The binaries are contained in an rpm file; you can extract the
> -binaries from the rpm file using rpm2cpio and cpio:
> -
> -$ cd IEMGD_HEAD_Linux/MeeGo1.2
> -$ rpm2cpio emgd-bin-2032-1.6.i586.rpm > emgd-bin-2032-1.6.i586.cpio
> -$ mkdir extracted; cd extracted
> -$ cpio -idv < ../emgd-bin-2032-1.6.i586.cpio
> -
> -Finally, you can copy the xorg-xserver binaries to the
> -emgd-driver-bin-1.8 directory in meta-intel/common:
> -
> -$ cp -a usr/lib meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8
> -
> -You also need to copy the IEMGD License.txt file to the same directory:
> -
> -$ cp IEMGD_HEAD_Linux/License/License.txt meta-intel/common/recipes/xorg-xserver/emgd-driver-bin-1.8
> -
> -Additionally, you should remove the following unused file from the
> -emgd binaries in order to avoid a packaging error at build-time:
> -
> -$ rm meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
> -
> -Finally, you need to remove the following file:
> -
> -$ rm meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so
> -
> -At this point, you should be able to build meta-fri2 images as usual.
> -
> -
> -III. Booting the images in /binary
> -==================================
> +II. Booting the images in /binary
> +=================================
>  
>  This BSP contains bootable live images, which can be used to directly
>  boot Yocto off of a USB flash drive.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

