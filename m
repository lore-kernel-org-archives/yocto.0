Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18742E0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 09:59:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2012 09:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,741,1336374000"; d="scan'208";a="178827285"
Received: from unknown (HELO [10.255.12.201]) ([10.255.12.201])
	by azsmga001.ch.intel.com with ESMTP; 09 Aug 2012 09:59:30 -0700
Message-ID: <1344531567.1294.5.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Thu, 09 Aug 2012 11:59:27 -0500
In-Reply-To: <50df046efebda7b41415932ddf66c877bd9026ee.1344383407.git.kishore.k.bodke@intel.com>
References: <cover.1344383407.git.kishore.k.bodke@intel.com>
	<50df046efebda7b41415932ddf66c877bd9026ee.1344383407.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-intel: Move Matrox MGA Xorg driver to common
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
X-List-Received-Date: Thu, 09 Aug 2012 16:59:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Kishore,

Could you break this up into 3 patches:

- one moving the mga recipe to common/recipes-graphics/xorg-driver (you
put it in xorg-server)

- one adding the new XSERVER_IA32_MATROX_MGA variable

- one having romley use it.

Thanks,

Tom

On Tue, 2012-08-07 at 16:58 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
>     Matrox MGA Xorg driver is being used by other meta-intel
>     BSPs.  So move this to meta-intel/common/recipes-graphics
>     and include in the machine.conf
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../xorg-xserver}/xf86-video-mga_1.4.13.bb         |    0
>  conf/machine/include/ia32-base.inc                 |    4 ++++
>  meta-romley/conf/machine/romley.conf               |    3 +--
>  3 files changed, 5 insertions(+), 2 deletions(-)
>  rename {meta-romley/recipes-graphics/xorg-driver => common/recipes-graphics/xorg-xserver}/xf86-video-mga_1.4.13.bb (100%)
> 
> diff --git a/meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb b/common/recipes-graphics/xorg-xserver/xf86-video-mga_1.4.13.bb
> similarity index 100%
> rename from meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
> rename to common/recipes-graphics/xorg-xserver/xf86-video-mga_1.4.13.bb
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 99ac352..47bd9fb 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -60,3 +60,7 @@ XSERVER_IA32_EMGD = "emgd-driver-bin \
>             "
>  
>  XSERVER_IA32_VESA = "xf86-video-vesa"
> +
> +XSERVER_IA32_MATROX_MGA = "xserver-xorg-module-xaa \
> +		xf86-video-mga \
> +		"
> diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
> index e6a755b..f7cfa18 100644
> --- a/meta-romley/conf/machine/romley.conf
> +++ b/meta-romley/conf/machine/romley.conf
> @@ -12,6 +12,5 @@ require conf/machine/include/ia32-base.inc
>  
>  XSERVER ?= "${XSERVER_IA32_BASE} \
>             ${XSERVER_IA32_EXT} \
> -           xserver-xorg-module-xaa \
> -	   xf86-video-mga \
> +	   ${XSERVER_IA32_MATROX_MGA} \
>             "



