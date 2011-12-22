Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D66CE005A3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 21:45:26 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2011 21:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49641476"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 21:45:24 -0800
Message-ID: <4EF2C3E2.3090501@linux.intel.com>
Date: Wed, 21 Dec 2011 21:45:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <950dae279cb0925fe80ad1f10be7eb36bc45eea5.1324525137.git.tom.zanussi@intel.com>
	<97e00bc6db2e3f2be4222c836e4c5d446e88d0d5.1324525137.git.tom.zanussi@intel.com>
In-Reply-To: <97e00bc6db2e3f2be4222c836e4c5d446e88d0d5.1324525137.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] meta-intel: change EMGD xserver libva dependency to libva-x11
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
X-List-Received-Date: Thu, 22 Dec 2011 05:45:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/21/2011 07:48 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> XSERVER_IA32_EMGD should depend on libva-x11, which in turn depends on
> libva, instead of just libva.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  conf/machine/include/ia32-base.inc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 6522c9c..84693e2 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -54,7 +54,7 @@ XSERVER_IA32_I915 = "xf86-video-intel \
>             "
>  
>  XSERVER_IA32_EMGD = "emgd-driver-bin \
> -           libva \
> +           libva-x11 \
>             "
>  
>  XSERVER_IA32_VESA = "xf86-video-vesa"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

