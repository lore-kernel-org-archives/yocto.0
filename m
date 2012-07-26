Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74A5CE002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:08:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jul 2012 13:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="171894411"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2012 13:08:55 -0700
Message-ID: <5011A371.2020502@linux.intel.com>
Date: Thu, 26 Jul 2012 13:07:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
	<c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/6] emgd-driver-bin: upgrade from 1.10 to 1.14
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
X-List-Received-Date: Thu, 26 Jul 2012 20:08:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> 1.14 is the latest released driver for emgd. This change is tested on crownbay machine.

Please limit your commit log messages to 72 characters in width. This
allows for some indentation without git log truncating the message. You
should be able to configure your editor to do this automatically.

> 
> Add runtime dependency to libxcb-dri2
> 
> Otherwise the libxcb-dri2.so is not getting installed, and video
> acceleration of emgd does not work. It is dynamic dependency of
> emgd_drv_video.so
> 
> emgd-driver-bin: add downloadfilename param to SRC_URI
> 
> As the url does not have the filename of the tarball, specify it here so that
> updated wget bitbake fetcher can save the downloaded file accordingly.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   17 +++++++++--------
>  1 files changed, 9 insertions(+), 8 deletions(-)
>  rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (88%)
> 
> diff --git a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> similarity index 88%
> rename from common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
> rename to common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> index 5779e5d..b1ba1b8 100644
> --- a/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
> +++ b/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> @@ -1,9 +1,9 @@
> -SUMMARY = "EMGD 1.10 xserver binaries"
> -DESCRIPTION = "EMGD 1.10 includes some userspace binaries that use non-free \
> +SUMMARY = "EMGD 1.14 xserver binaries"
> +DESCRIPTION = "EMGD 1.14 includes some userspace binaries that use non-free \
>  licensing, which are now available via a non-click-through downloadable \
>  tarball, and is what this recipe now uses.  Since it is a non-free license, \
> -this recipe is marked as 'License_emgd-driver-bin_1.10' and you need to add \
> -to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.10\" to your \
> +this recipe is marked as 'License_emgd-driver-bin_1.14' and you need to add \
> +to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
>  local.conf in order to enable it in a build."
>  LICENSE = "Intel-binary-only"
>  LICENSE_FLAGS = "license_${PN}_${PV}"
> @@ -16,17 +16,18 @@ EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
>  LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
>  
>  DEPENDS = "rpm-native xz-native"
> +RDEPENDS = "libxcb-dri2"
>  
> -SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.tgz"
> +SRC_URI = "https://edc.intel.com/Download.aspx?id=6190;downloadfilename=LIN_IEMGD_1_14_GOLD_2443.tgz"
>  
> -SRC_URI[md5sum] = "e4a38d9efa0b086ae21b68145c4db4e9"
> -SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
> +SRC_URI[md5sum] = "733a7f237ffce21238ce2c9956df4fd6"
> +SRC_URI[sha256sum] = "bcdc333b5edbda7c746a83ef821ded4a0ca55ead30980e4e3680cdb6469f45a2"
>  
>  # These are closed binaries generated elsewhere so don't check ldflags
>  INSANE_SKIP_${PN} = "ldflags"
>  
>  FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
> -FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
> +FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/gstreamer-0.10/.debug"

This change is not covered in the change log.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

