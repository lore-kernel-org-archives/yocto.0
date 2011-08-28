Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 973B8E00777
	for <yocto@yoctoproject.org>; Sun, 28 Aug 2011 06:09:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Aug 2011 06:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="42700417"
Received: from unknown (HELO [10.255.13.254]) ([10.255.13.254])
	by orsmga002.jf.intel.com with ESMTP; 28 Aug 2011 06:09:20 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <7ec0c9b144bec334d90299b3f4ebcad3346cd9cd.1314529271.git.ke.yu@intel.com>
References: <cover.1314529271.git.ke.yu@intel.com>
	<7ec0c9b144bec334d90299b3f4ebcad3346cd9cd.1314529271.git.ke.yu@intel.com>
Date: Sun, 28 Aug 2011 08:09:01 -0500
Message-ID: <1314536941.6559.0.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] emenlow xpsb-glx: add package libglu to fix lsb image build warning
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
X-List-Received-Date: Sun, 28 Aug 2011 13:09:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-08-28 at 04:10 -0700, Yu Ke wrote:
> lsb image requires libglu, so split the xpsb-glx to provide the libglu
> package. mesa-dri also do in the same way. so this patch make xpsb-glx
> in sync with mesa-dri.
> 
> Fix [YOCTO #1395]
> 

Thanks, Yu Ke.  Pulled into meta-intel/master.

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    7 ++++++-
>  1 files changed, 6 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
> index 0d675c6..8fb25d6 100644
> --- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
> +++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
> @@ -4,7 +4,7 @@ DESCRIPTION = "X11 drivers for Poulsbo (psb) 3D acceleration"
>  # not Intel proprietary, but it has no obvious license attached to it.
>  LICENSE = "Intel-binary-only"
>  LIC_FILES_CHKSUM = "file://${WORKDIR}/${PN}-${PV}/COPYING;md5=02c597a2f082b4581596065bb5a521a8"
> -PR = "r7"
> +PR = "r8"
>  
>  inherit autotools
>  
> @@ -41,6 +41,11 @@ DEPENDS += "libxfixes libxdamage libdrm-poulsbo libxxf86vm dri2proto libxmu libx
>  FILES_${PN} = "${libdir}/* ${libdir}/xorg/modules/dri/* \
>  	    ${libdir}/xorg/modules/drivers/*"
>  
> +PACKAGES =+ "libglu libglu-dev"
> +
> +FILES_libglu = "${libdir}/libGLU.so.*"
> +FILES_libglu-dev = "${libdir}/libGLU.* ${includedir}/GL/glu*.h"
> +
>  # Multiple virtual/gl providers being built breaks staging
>  EXCLUDE_FROM_WORLD = "1"
>  



