Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52C8AE0030C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 21:45:16 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2011 21:45:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49641458"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 21:45:15 -0800
Message-ID: <4EF2C3D9.60101@linux.intel.com>
Date: Wed, 21 Dec 2011 21:44:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1324525136.git.tom.zanussi@intel.com>
	<950dae279cb0925fe80ad1f10be7eb36bc45eea5.1324525137.git.tom.zanussi@intel.com>
In-Reply-To: <950dae279cb0925fe80ad1f10be7eb36bc45eea5.1324525137.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] meta-intel: add PROVIDES for extra packages provided by libva
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
X-List-Received-Date: Thu, 22 Dec 2011 05:45:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/21/2011 07:48 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> libva provides some extra packages such as libva-glx.  Add PROVIDES
> for them so the rest of the build system knows about it.
> 
> We also need to add the dependency relationships between libva,
> libva-x11, and libva-glx.
> 
> Also remove the bogus RDEPENDS on the display components.
> 
> Also libva-glx depends on mesa-dri - if it's not there, libva-glx
> won't be built.
> 
> Also, add missing -dev and -dbg packaging.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  common/recipes-multimedia/libva/libva.inc |   42 +++++++++++++++++++++-------
>  1 files changed, 31 insertions(+), 11 deletions(-)
> 
> diff --git a/common/recipes-multimedia/libva/libva.inc b/common/recipes-multimedia/libva/libva.inc
> index 93b3cae..d897f36 100644
> --- a/common/recipes-multimedia/libva/libva.inc
> +++ b/common/recipes-multimedia/libva/libva.inc
> @@ -17,25 +17,45 @@ SECTION = "x11"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=2e48940f94acb0af582e5ef03537800f"
>  
> -INC_PR = "r0"
> +INC_PR = "r1"
>  
> -DEPENDS = "libxext libxfixes libdrm"
> +DEPENDS = "libxext libxfixes libdrm mesa-dri"
>  
>  inherit autotools pkgconfig
>  
>  PACKAGES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
> +PROVIDES =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
>  PACKAGES =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
> +PACKAGES =+ "${PN}-x11-dbg ${PN}-tpi-dbg ${PN}-glx-dbg ${PN}-egl-dbg"
> +RPROVIDES_${PN}-dev =+ "${PN}-x11-dev ${PN}-tpi-dev ${PN}-glx-dev ${PN}-egl-dev"
>  
> -RDEPENDS_${PN} =+ "${PN}-x11 ${PN}-tpi ${PN}-glx ${PN}-egl"
> +RDEPENDS_${PN}-tpi =+ "${PN}"
> +RDEPENDS_${PN}-x11 =+ "${PN}"
> +RDEPENDS_${PN}-glx =+ "${PN}-x11"
> +RDEPENDS_${PN}-egl =+ "${PN}-x11"
>  
>  FILES_${PN}-dbg += "${libdir}/dri/.debug"
>  FILES_${PN} += "${libdir}/dri"
>  
> -FILES_${PN}-x11-dev =+ "${libdir}/libva-x11.so"
> -FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi.so"
> -FILES_${PN}-glx-dev =+ "${libdir}/libva-glx.so"
> -FILES_${PN}-egl-dev =+ "${libdir}/libva-egl.so"
> -FILES_${PN}-x11 =+ "${libdir}/libva-x11.*"
> -FILES_${PN}-tpi =+ "${libdir}/libva-tpi.*"
> -FILES_${PN}-glx =+ "${libdir}/libva-glx.*"
> -FILES_${PN}-egl =+ "${libdir}/libva-egl.*"
> +FILES_${PN}-x11 =+ "${libdir}/libva-x11*${SOLIBS}"
> +FILES_${PN}-tpi =+ "${libdir}/libva-tpi*${SOLIBS}"
> +FILES_${PN}-glx =+ "${libdir}/libva-glx*${SOLIBS}"
> +FILES_${PN}-egl =+ "${libdir}/libva-egl*${SOLIBS}"
> +
> +FILES_${PN}-x11-dev =+ "${libdir}/libva-x11*${SOLIBSDEV}"
> +FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi*${SOLIBSDEV}"
> +FILES_${PN}-glx-dev =+ "${libdir}/libva-glx*${SOLIBSDEV}"
> +FILES_${PN}-egl-dev =+ "${libdir}/libva-egl*${SOLIBSDEV}"
> +FILES_${PN}-x11-dev =+ "${libdir}/libva-x11*.la"
> +FILES_${PN}-tpi-dev =+ "${libdir}/libva-tpi*.la"
> +FILES_${PN}-glx-dev =+ "${libdir}/libva-glx*.la"
> +FILES_${PN}-egl-dev =+ "${libdir}/libva-egl*.la"
> +FILES_${PN}-x11-dev =+ "${libdir}/pkgconfig/libva-x11*.pc"
> +FILES_${PN}-tpi-dev =+ "${libdir}/pkgconfig/libva-tpi*.pc"
> +FILES_${PN}-glx-dev =+ "${libdir}/pkgconfig/libva-glx*.pc"
> +FILES_${PN}-egl-dev =+ "${libdir}/pkgconfig/libva-egl*.pc"
> +
> +FILES_${PN}-x11-dbg =+ "${libdir}/.debug/libva-x11.*"
> +FILES_${PN}-tpi-dbg =+ "${libdir}/.debug/libva-tpi.*"
> +FILES_${PN}-glx-dbg =+ "${libdir}/.debug/libva-glx.*"
> +FILES_${PN}-egl-dbg =+ "${libdir}/.debug/libva-egl.*"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

