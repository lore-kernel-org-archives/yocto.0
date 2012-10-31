Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98732E006C1
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 14:00:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Oct 2012 14:00:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,688,1344236400"; d="scan'208";a="242613450"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by fmsmga002.fm.intel.com with ESMTP; 31 Oct 2012 14:00:30 -0700
Message-ID: <1351717230.1762.39.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Wed, 31 Oct 2012 16:00:30 -0500
In-Reply-To: <1351256528-28229-1-git-send-email-ross.burton@intel.com>
References: <1351256528-28229-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] cdv-pvr-driver: inhibit package stripping
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
X-List-Received-Date: Wed, 31 Oct 2012 21:00:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-10-26 at 14:02 +0100, Ross Burton wrote:
> The binaries are already stripped, so don't try stripping them again (which
> results in a warning).
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Pulled into meta-intel/master.

Tom

> ---
>  .../recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb          |    5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
> index e9d4ede..7bda3b5 100644
> --- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
> +++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
> @@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = " \
>  
>  DEPENDS = "rpm-native libva"
>  
> -PR = "r4"
> +PR = "r5"
>  
>  PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
>  PSB-VIDEO-REV = "1.0.3"
> @@ -66,6 +66,9 @@ S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
>  # These are closed binaries generated elsewhere so don't check ldflags
>  INSANE_SKIP_${PN} = "ldflags"
>  
> +# Don't try stripping, as the binaries are already stripped
> +INHIBIT_PACKAGE_STRIP = "1"
> +
>  # .so files in these binaries are not symlinks. Rearange package order
>  # so that they go to ${PN} instead of $PN}-dev
>  PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN} ${PN}-dev ${PN}-doc ${PN}-locale"



