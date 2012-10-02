Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10518E011C0
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 16:19:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Oct 2012 16:18:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,525,1344236400"; d="scan'208";a="229782019"
Received: from unknown (HELO [10.255.14.37]) ([10.255.14.37])
	by fmsmga002.fm.intel.com with ESMTP; 02 Oct 2012 16:18:55 -0700
Message-ID: <1349219935.8890.18.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 02 Oct 2012 18:18:55 -0500
In-Reply-To: <1349172705-29101-1-git-send-email-ross.burton@intel.com>
References: <1349172705-29101-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-cedartrail: add missing dependency on EXA module to X driver
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
X-List-Received-Date: Tue, 02 Oct 2012 23:19:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Pulled into meta-intel/master.

Thanks,

Tom

On Tue, 2012-10-02 at 11:11 +0100, Ross Burton wrote:
> [YOCTO #3204]
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  .../recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb            |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
> index afda9dd..cd3407c 100644
> --- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
> +++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
> @@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = " \
>  
>  DEPENDS = "rpm-native libva"
>  
> -PR = "r1"
> +PR = "r2"
>  
>  PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
>  PSB-VIDEO-REV = "1.0.3"
> @@ -66,6 +66,7 @@ FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
>  FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
>  FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt"
>  
> +RDEPENDS_${PN} = "xserver-xorg-module-exa"
>  
>  TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
>  INSANE_SKIP_${PN} += "ldflags"



