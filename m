Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6682E002AB
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 15:54:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Sep 2012 15:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,445,1344236400"; d="scan'208";a="194595647"
Received: from unknown (HELO envy.home) ([10.255.13.79])
	by orsmga001.jf.intel.com with ESMTP; 18 Sep 2012 15:54:11 -0700
Message-ID: <5058FB74.40503@intel.com>
Date: Tue, 18 Sep 2012 15:53:40 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1347834237.git.nitin.a.kamble@intel.com>
	<0d86ea6eeb8e1fdc17aaa4200cb11981f500c728.1347834237.git.nitin.a.kamble@intel.com>
In-Reply-To: <0d86ea6eeb8e1fdc17aaa4200cb11981f500c728.1347834237.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] emgd-driver-bin: avoid rebuilding issue of the recipe
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
X-List-Received-Date: Tue, 18 Sep 2012 22:54:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/16/2012 03:27 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This avoids errors like this:
> | cpio: ./usr/lib/libgstvabuffer.so.0 not created: newer or same age version exists
> | install: cannot stat `/srv/home/nitin/builds/build-crownbay/tmp/work/core2-poky-linux/emgd-driver-bin-1.14-r2/IEMGD_HEAD_Linux/MeeGo1.2/usr/lib/libGLES_CM.so': No such file or directory
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../xorg-driver/emgd-driver-bin_1.14.bb            |    5 ++++-
>  1 files changed, 4 insertions(+), 1 deletions(-)
> 
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
> index 2464c38..6ea6278 100644
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
> +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
> @@ -7,7 +7,7 @@ to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
>  local.conf in order to enable it in a build."
>  LICENSE = "Intel-binary-only"
>  LICENSE_FLAGS = "license_${PN}_${PV}"
> -PR = "r2"
> +PR = "r3"
>  
>  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
>  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
> @@ -38,6 +38,9 @@ FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug $
>  S = "${WORKDIR}/${EMGD_RPM_DIR}"
>  
>  do_install () {
> +    # cleanup previous files if any
> +    rm -rf usr 
> +

This looks like a hack. If nothing has changed, this shouldn't be an
issue. If something has changed, we should triggering a new build
anyway. What's actually going on here?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

