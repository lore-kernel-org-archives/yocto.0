Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89AC5E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 12:43:23 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 30 Jul 2012 12:43:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128548753"
Received: from unknown (HELO [10.255.12.188]) ([10.255.12.188])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Jul 2012 12:43:22 -0700
Message-ID: <1343677400.21025.41.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Mon, 30 Jul 2012 14:43:20 -0500
In-Reply-To: <cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
References: <cover.1343570184.git.nitin.a.kamble@intel.com>
	<cb97bb55ba60e1fa47e8a7f5c6393f97b9ad283f.1343570184.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/4] emgd-driver-bin: upgrade from 1.10 to 1.14
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
X-List-Received-Date: Mon, 30 Jul 2012 19:43:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-07-29 at 07:00 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> 1.14 is the latest released driver for emgd. This change is tested on
> crownbay machine.
> 
> Add runtime dependency to libxcb-dri2
> 

Hi Nitin,

When building, I'm seeing this:

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for runtime libxcb-dri2
(libxcb-nativesdk, libxcb)
NOTE: consider defining a PREFERRED_PROVIDER entry to match libxcb-dri2

Tom

> Otherwise the libxcb-dri2.so is not getting installed, and video
> acceleration of emgd does not work. It is dynamic dependency of
> emgd_drv_video.so
> 
> put files in gstreamer-0.10/.debug directory to the debug package.
> It avoids debug files packaging warnings.
> 
> add downloadfilename param to SRC_URI
> 
> As the url does not have the filename of the tarball, specify it here
> so that updated wget bitbake fetcher can save the downloaded file
> accordingly.
> BTW now EDC has also published another download URL on our request:
> http://edc.intel.com/App_Shared/Downloads/LIN_IEMGD_1_14_GOLD_2443.tgz
> 
> And update emgd driver version in the README.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   17 +++++++++--------
>  meta-crownbay/README                               |    8 ++++----
>  2 files changed, 13 insertions(+), 12 deletions(-)
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
>  
>  S = "${WORKDIR}/${EMGD_RPM_DIR}"
>  
> diff --git a/meta-crownbay/README b/meta-crownbay/README
> index b56c79a..2521432 100644
> --- a/meta-crownbay/README
> +++ b/meta-crownbay/README
> @@ -6,7 +6,7 @@ The Crown Bay platform consists of the Intel Atom Z6xx processor,
>  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
>  
>  It also supports the E6xx embedded on-chip graphics via the Intel
> -Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
> +Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>  
> 
>  Dependencies
> @@ -63,7 +63,7 @@ common metadata shared between BSPs) e.g.:
>  The meta-crownbay layer contains support for two different machine
>  configurations. These configurations are identical except for the fact
>  that the one prefixed with 'crownbay' makes use of the
> -Intel-proprietary EMGD 1.10 graphics driver, while the one prefixed
> +Intel-proprietary EMGD 1.14 graphics driver, while the one prefixed
>  with 'crownbay-noemgd' does not.
>  
>  If you want to enable the layer that supports EMGD graphics add the
> @@ -73,10 +73,10 @@ following to the local.conf file:
>  
>  The 'crownbay' machine includes the emgd-driver-bin package, which has
>  a proprietary license that must be whitelisted by adding the string
> -"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
> +"license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST variable
>  in your local.conf.  For example:
>  
> -  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
> +  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
>  
>  If you want to enable the layer that does not support EMGD graphics
>  add the following to the local.conf file:



