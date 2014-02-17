Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D6DDE00747;
	Sun, 16 Feb 2014 16:03:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Feb 2014 16:03:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,857,1384329600"; d="scan'208";a="456570294"
Received: from unknown (HELO [10.255.13.59]) ([10.255.13.59])
	by orsmga001.jf.intel.com with ESMTP; 16 Feb 2014 16:02:53 -0800
Message-ID: <1392595373.14720.167.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Sun, 16 Feb 2014 18:02:53 -0600
In-Reply-To: <1392402286-32663-1-git-send-email-koen@dominion.thruhere.net>
References: <1392402286-32663-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@lists.yoctoproject.org, meta-intel@lists.yoctoproject.org
Subject: Re: [meta-intel][common][dora][PATCHv2] emgd-driver-bin: limit build to x86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Feb 2014 00:03:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-02-14 at 19:24 +0100, Koen Kooi wrote:
> When building GL apps for non-x86 machines (e.g. raspberrypi) emgd-driver-bin is being
> dragged in as a valid provider. To avoid build breakage fix it at the
> source by limiting emgd-driver-bin to x86 architectures.
> 
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>

Pulled into meta-intel/dora and meta-intel/master.

Thanks,

Tom

> ---
>  common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb | 2 ++
>  common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> index c8ca726..8cb088e 100644
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> @@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.16 & Intel-user-space-graphics-driver-b
>  LICENSE_FLAGS = "license_${PN}_${PV}"
>  PR = "r0"
>  
> +COMPATIBLE_HOST = "(i.86).*-linux"
> +
>  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
>  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
>  EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
> index b3bf0d2..cf6d855 100644
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
> +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
> @@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.18 & Intel-user-space-graphics-driver-b
>  LICENSE_FLAGS = "license_${PN}_${PV}"
>  PR = "r1"
>  
> +COMPATIBLE_HOST = "(i.86).*-linux"
> +
>  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
>  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
>  EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"



