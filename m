Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90FE8E01216
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2011 06:49:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Aug 2011 06:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="40047605"
Received: from unknown (HELO envy.home) ([10.255.13.233])
	by orsmga001.jf.intel.com with ESMTP; 19 Aug 2011 06:49:27 -0700
Message-ID: <4E4E69E7.2030506@linux.intel.com>
Date: Fri, 19 Aug 2011 06:49:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: walimis <walimisdev@gmail.com>
References: <1313747029-10209-1-git-send-email-walimisdev@gmail.com>
In-Reply-To: <1313747029-10209-1-git-send-email-walimisdev@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta: add APM Emulation option to beagleboard
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
X-List-Received-Date: Fri, 19 Aug 2011 13:49:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/19/2011 02:43 AM, walimis wrote:
> From: Liming Wang <liming.wang@windriver.com>
> 
> apmd daemon needs this option to work, so add this to beagleboard
> kernel config file.
> 
> Signed-off-by: Liming Wang <liming.wang@windriver.com>

I'd like to move beyond this in the future, but for the 1.1 release I
think this is the right call:

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> index 00485d2..56fce58 100644
> --- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> +++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> @@ -328,3 +328,8 @@ CONFIG_VIDEO_OMAP3_ISP=y
>  # CONFIG_VIDEO_OMAP34XX_ISP_PREVIEWER is not set
>  CONFIG_VIDEO_OMAP34XX_ISP_RESIZER=y
>  # CONFIG_VIDEO_HELPER_CHIPS_AUTO is not set
> +
> +#
> +# Advanced Power Management Emulation support
> +#
> +CONFIG_APM_EMULATION=y

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

