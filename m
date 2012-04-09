Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01828E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:07:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 11:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130378184"
Received: from unknown (HELO [10.255.12.48]) ([10.255.12.48])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 11:07:32 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <1377383bc9ade93f6bb303ca95fb76ceb396a0f4.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<1377383bc9ade93f6bb303ca95fb76ceb396a0f4.1333496206.git.kishore.k.bodke@intel.com>
Date: Mon, 09 Apr 2012 13:06:44 -0500
Message-ID: <1333994804.2335.75.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 7/7] Cedartrail: Update the README.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:07:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-03 at 16:43 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Update the README file with instructions to build
> with pvr graphics driver.
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  meta-cedartrail/README |   41 +++++++++++++++++++++++++++++++++++++++--
>  1 files changed, 39 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-cedartrail/README b/meta-cedartrail/README
> index 295e9ff..f482cca 100755
> --- a/meta-cedartrail/README
> +++ b/meta-cedartrail/README
> @@ -52,10 +52,23 @@ common metadata shared between BSPs) e.g.:
>          yocto/meta-intel \  
>  	yocto/meta-intel/meta-cedartrail \
>  
> -To enable the cedartrail layer, add the cedartrail MACHINE to local.conf:
> +To enable the cedartrail layer that supports Power VR graphics, 
> +add the cedartrail MACHINE to local.conf:
>  
>    MACHINE ?= "cedartrail"
>  
> +
> +Power VR Graphics user-space driver binaries are covered by a
> +"Intel Free Distribution Binary License". The build of this driver
> +can be enabled by adding the following line to the local.conf file:
> +
> +LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0"
> +
> +To enable the layer that does not support Power VR graphics
> +add the following to the local.conf file:
> +
> + MACHINE ?= "cedartrail-nopvr"
> +
>  You should then be able to build a cedartrail image as such:
>  
>    $ source oe-init-build-env
> @@ -85,7 +98,7 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
>  takes device /dev/sdf, use dd to copy the live image to it.  For
>  example:
>  
> -# dd if=core-image-sato-cedartrail-20120105232035.hddimg of=/dev/sdf
> +# dd if=core-image-sato-cedartrail-20120403210525.hddimg of=/dev/sdf
>  # sync
>  # eject /dev/sdf
>  
> @@ -109,3 +122,27 @@ the syslinux boot: prompt, or the boot: prompt contains strange
>  characters), try doing this first:
>  
>  # dd if=/dev/zero of=/dev/sdf bs=1M count=512
> +
> +Miscellaneous Notes
> +====================
> +
> +Video and Music Samples
> +-----------------------
> +This BSP includes recipes to download Ogg format video and
> +music files that can be played-back with the Video and music players
> +included in the sato images.  The sample files are installed in
> +/home/Music and /home/Videos directories.  
> +
> +
> +Adding Glxgears to image
> +-------------------------
> +Glxgears can be added to the generated image by adding "debug-tweaks"
> +option to the extra image features variable in the default local.conf
> +before building the BSP.

I think the thing that adds glxgears is tools-testapps and not
debug-tweaks.  You have tools-testapps below which is probably why it
works, but you might want to verify that and change the README text if
so.

Tom

> +
> +e.g. to add Glxgears, locate the following line in local.conf
> +EXTRA_IMAGE_FEATURES = "debug-tweaks"
> +
> +and change above line to..
> +
> +EXTRA_IMAGE_FEATURES = "debug-tweaks tools-testapps"



