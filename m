Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3251E00305
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 11:21:56 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Dec 2011 11:21:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49501595"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 11:21:55 -0800
Message-ID: <4EF231C1.7060209@intel.com>
Date: Wed, 21 Dec 2011 11:21:37 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto Project <yocto@yoctoproject.org>,
	raj.khem@gmail.com, koen@dominion.thruhere.net, kergoth@gmail.com, 
	elizabeth.flanagan@intel.com, martin.jansa@gmail.com, 
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
	<7efa92333bfb6fb2eb58f1403b9e61ebd7455522.1324493490.git.dvhart@linux.intel.com>
In-Reply-To: <7efa92333bfb6fb2eb58f1403b9e61ebd7455522.1324493490.git.dvhart@linux.intel.com>
Subject: Re: [PATCH 6/9] distro: Add POKY_DEFAULT_EXTRA_R* variables
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
X-List-Received-Date: Wed, 21 Dec 2011 19:21:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/21/2011 10:58 AM, Darren Hart wrote:
> Allow the reuse of poky.conf by distro definitions wanting to remove
> content by introducting POKY_DEFAULT_EXTRA_R*. These are appended
> to the corresponding DISTRO_EXTRA_R* variables and can be overriden
> by distro configs that "require poky.conf".
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    8 ++++++--
>  1 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 80d4e47..43945be 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -24,8 +24,12 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>  
>  EXTRAOPKGCONFIG = "poky-feed-config-opkg"
>  
> -DISTRO_EXTRA_RDEPENDS += "task-core-boot"
> -DISTRO_EXTRA_RRECOMMENDS += "kernel-module-af-packet"
> +# Override these in poky based distros to modify DISTRO_EXTRA_R*
> +POKY_DEFAULT_EXTRA_RDEPENDS = "task-core-boot"
> +POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
> +
> +DISTRO_EXTRA_RDEPENDS += ${POKY_DEFAULT_EXTRA_RDEPENDS}
> +DISTRO_EXTRA_RRECOMMENDS += ${POKY_DEFAULT_EXTRA_RRECOMMENDS}

Doh, -ENOQUOTING. Fixed in the dvhart/tiny-v2 contrib branch.

>  
>  POKYQEMUDEPS = "${@base_contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "qemu-config",d)}"
>  DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

